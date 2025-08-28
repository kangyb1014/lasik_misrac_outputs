## libmetal
discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmetal-TestGen \
    -m gpt-5-mini \
    -p libmetal \
    -v 9 \
    -c TestGen \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmetal-frag

discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmetal-TestExec \
    -m gpt-5-mini \
    -p libmetal \
    -v 9 \
    -c TestExec \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmetal-TestGen


## OSAL
discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-osal-TestGen \
    -m gpt-5-mini \
    -p osal \
    -v 9 \
    -c TestGen \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-osal-frag

discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-osal-TestExec \
    -m gpt-5-mini \
    -p osal \
    -v 9 \
    -c TestExec \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-osal-TestGen



## littlefs
discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-littlefs-TestGen \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 \
    -c TestGen \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-littlefs-frag

discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-littlefs-TestExec \
    -m gpt-5-mini \
    -p littlefs \
    -v 9 \
    -c TestExec \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-littlefs-TestGen

## libmicrohttpd
discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmicrohttpd-TestGen \
    -m gpt-5-mini \
    -p libmicrohttpd \
    -v 9 \
    -c TestGen \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmicrohttpd-frag

discord_webhook python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/main.py \
    -o /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmicrohttpd-TestExec \
    -m gpt-5-mini \
    -p libmicrohttpd \
    -v 9 \
    -c TestExec \
    -C /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmicrohttpd-TestGen


## summary
python3 /ssd_home/yeongbin/lasik/output/v4/execution_summary.py \
    /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmetal-TestExec/analysis_results \
    > /ssd_home/yeongbin/lasik/output/v4/libmetal.csv

python3 /ssd_home/yeongbin/lasik/output/v4/execution_summary.py \
    /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-osal-TestExec/analysis_results \
    > /ssd_home/yeongbin/yeongbin/lasik/output/v4/osal.csv

python3 /ssd_home/yeongbin/lasik/output/v4/execution_summary.py \
    /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-littlefs-TestExec/analysis_results \
    > /ssd_home/yeongbin/lasik/output/v4/littlefs.csv

python3 /ssd_home/yeongbin/lasik/output/v4/execution_summary.py \
    /ssd_home/yeongbin/lasik/output/v4/gpt-5-mini-libmicrohttpd-TestExec/analysis_results \
    > /ssd_home/yeongbin/lasik/output/v4/libmicrohttpd.csv