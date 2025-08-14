#!/usr/bin/env python3
import json, os, sys
from utils.constants import TOP_MISRA_RULES

def main(argv):
    # usage: python3 execution_summary.py analysis_results_dir
    if len(argv) != 2:
        print("Usage: python3 execution_summary.py <analysis_results_dir>")
        return 1
    
    analysis_results_dir = argv[1]
    if not os.path.exists(analysis_results_dir):
        print(f"Analysis results directory does not exist: {analysis_results_dir}")
        return 1
    
    for entry in sorted(os.listdir(analysis_results_dir), key=lambda x: x.lower()):
        func_name = entry.split("#")[0]
        func_id = entry.split("#")[1] if "#" in entry else None

        for rule in TOP_MISRA_RULES:
            rule_dir = os.path.join(analysis_results_dir, entry, rule)
            if not os.path.exists(rule_dir):
                print(f"WARNING: Rule directory does not exist: {rule_dir}")
                continue
            
            is_rule_violated = None
            # 1. classifier report
            classifier_report_fn = os.path.join(rule_dir, "classifier.json")
            if not os.path.exists(classifier_report_fn):
                print(f"WARNING: Classifier report does not exist: {classifier_report_fn}")
                continue
            with open(classifier_report_fn, "r") as f:
                classifier_report = json.load(f)
                is_rule_violated = classifier_report.get("is_rule_violated")


            execution_result = None
            # 2. If classifier report the rule is violated, check execution
            if is_rule_violated:
                execution_report_fn = os.path.join(rule_dir, "execution.json")
                if not os.path.exists(execution_report_fn):
                    print(f"WARNING: Execution summary does not exist: {execution_report_fn}")
                    continue
                with open(execution_report_fn, "r") as f:
                    execution_report = json.load(f)
                    execution_result = execution_report.get("result")
            
            # 3. Check if a fix trial fixes the execution failure
            fix_result = None
            if is_rule_violated and execution_result != "success":
                fix_trial_report_fn = os.path.join(rule_dir, "execution_fixed_1.json")
                if os.path.exists(fix_trial_report_fn):
                    with open(fix_trial_report_fn, "r") as f:
                        fix_trial_report = json.load(f)
                        fix_result = fix_trial_report.get("result")
                else:   
                    # print(f"WARNING: Fix trial report does not exist: {fix_trial_report_fn}")
                    pass

            # print summary
            # print(f"Function: {func_name}, ID: {func_id}")
            # print(f"  Rule: {rule}")
            # print(f"    Is Rule Violated: {is_rule_violated}")
            # if is_rule_violated:
            #     print(f"    Execution Result: {execution_result}")
            #     if fix_result:
            #         print(f"    Fix Trial Result: {fix_result}")
            # print()
            

            print(f"{func_name},{rule},{is_rule_violated},{execution_result},{fix_result}")

            


if __name__ == "__main__":
    sys.exit(main(sys.argv))
