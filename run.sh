#!/bin/bash

SCRIPT_DIR=$(dirname "$0")

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-osal \
    -m gpt-5-mini \
    -p osal \
    -v 9

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-littlefs \
    -m gpt-5-mini \
    -p littlefs \
    -v 9

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmetal \
    -m gpt-5-mini \
    -p libmetal \
    -v 9

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmicrohttpd \
    -m gpt-5-mini \
    -p libmicrohttpd \
    -v 9

/
python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-osal \
    -m gpt-5-mini \
    -p osal \
    -v 9 \
    -F /ssd_home/yeongbin/lasik/misrac_subjects/osal/srcs/equuleus-rc1/src/os/portable/os-impl-posix-files.c \
    -f OS_FileOpen_Impl \
    -r 2.2

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-littlefs \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 \
    -F /ssd_home/yeongbin/lasik/misrac_subjects/littlefs/srcs/v2.11.0/lfs.c \
    -f lfs_fs_traverse \
    -r 2.2

# python3 lasik/main.py \
#     -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmicrohttpd \
#     -m gpt-5-mini \
#     -p libmicrohttpd \
#     -v 9 \
#     -F /ssd_home/yeongbin/lasik/misrac_subjects/libmicrohttpd/srcs/libmicrohttpd-1.0.1/src/microhttpd/mhd_threads.c \
#     -f MHD_create_named_thread_


# python3 convert_output_to_data.py /ssd_home/yeongbin/lasik/output/20250808.08\:12_gpt-5-mini-libmicrohttpd/ /dev/null /ssd_home/yeongbin/lasik/output/20250808.08\:12_gpt-5-mini-libmicrohttpd/libmicrohttpd.json

# python3 execution_summary.py ../../output/20250808.08\:12_gpt-5-mini-libmicrohttpd/analysis_results/ > ../../output/20250808.08\:12_gpt-5-mini-libmicrohttpd/execution_summary.csv


python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-osal \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 \
    -r 2.2 \
    -C /ssd_home/yeongbin/lasik/output/20250818.1926_gpt-5-mini-littlefs \
    -c TestExec


## 20250825
python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-osal \
    -m gpt-5-mini \
    -p osal \
    -v 9


python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-littlefs \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 

python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmicrohttpd \
    -m gpt-5-mini \
    -p libmicrohttpd \
    -v 9

## 20250827    
-o /ssd_home/yeongbin/lasik/output/v4/test1     -m gpt-5-mini     -p littlefs     -v 9     -c TestExec     -C /ssd_home/yeongbin/lasik/output/v4/test
    

python3 lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/$(date +%Y%m%d.%H%M)_gpt-5-mini-libmetal \
    -m gpt-5-mini \
    -p libmetal \
    -v 9
    -[]
