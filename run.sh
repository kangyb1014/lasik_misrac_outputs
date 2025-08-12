#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-osal \
    -m gpt-5-mini \
    -p osal \
    -v 9 \
    -l /ssd_home/yeongbin/lasik/output/osal_sample.json

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-littlefs \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 \
    -l /ssd_home/yeongbin/lasik/output/littlefs_sample.json

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmetal \
    -m gpt-5-mini \
    -p libmetal \
    -v 9 \
    -l /ssd_home/yeongbin/lasik/output/libmetal_sample.json

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmicrohttpd \
    -m gpt-5-mini \
    -p libmicrohttpd \
    -v 9 \
    -F /ssd_home/yeongbin/lasik/misrac_subjects/libmicrohttpd/srcs/libmicrohttpd-1.0.1/src/microhttpd/mhd_threads.c \
    -f MHD_create_named_thread_

# python3 convert_output_to_data.py /ssd_home/yeongbin/lasik/output/20250808.08\:12_gpt-5-mini-libmicrohttpd/ /dev/null /ssd_home/yeongbin/lasik/output/20250808.08\:12_gpt-5-mini-libmicrohttpd/libmicrohttpd.json

# python3 execution_summary.py ../../output/20250808.08\:12_gpt-5-mini-libmicrohttpd/analysis_results/ > ../../output/20250808.08\:12_gpt-5-mini-libmicrohttpd/execution_summary.csv