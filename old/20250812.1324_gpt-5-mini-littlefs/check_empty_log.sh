#!/bin/bash

BASE_PATH="/ssd_home/yeongbin/lasik/output/20250812.1324_gpt-5-mini-littlefs/analysis_results"
CSV_FILE="/ssd_home/yeongbin/lasik/output/20250812.1324_gpt-5-mini-littlefs/execution_summary.csv"

# Read from CSV file, skip empty lines and process each entry
while IFS=',' read -r func_dir rule frag_id status result; do
    # only result == "empty_test_log" 
    if [[ -z "$func_dir" || -z "$rule" || -z "$frag_id" || "$result" != "empty_test_log" ]]; then
        continue
    fi
    
    if [ -d "$BASE_PATH/$func_dir" ]; then
        d="$func_dir"
            if [ -f "$BASE_PATH/$func_dir/$rule/testcode_$frag_id.json" ]; then
                echo "Processing: $BASE_PATH/$func_dir/$rule/testcode_$frag_id.json"
                set -x
                python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/try_build_test_code.py "$BASE_PATH/$func_dir/$rule/testcode_$frag_id.json" $BASE_PATH/../log_status.txt
                set +x
            else
                echo "File $BASE_PATH/$func_dir/$rule/testcode_$frag_id.json does not exist, skipping..."
            continue
        fi
    else
        echo "Directory $BASE_PATH/$func_dir does not exist, skipping..."
        continue
    fi
done < "$CSV_FILE"