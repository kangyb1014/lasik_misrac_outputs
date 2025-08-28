

tmp_path = "/ssd_home/yeongbin/lasik/output/20250813.0622_gpt-5-mini-libmicrohttpd/tmp.txt"
log_status_path = "/ssd_home/yeongbin/lasik/output/20250813.0622_gpt-5-mini-libmicrohttpd/log_status_sorted_alphabetical.txt"


with open(tmp_path, "r") as f1, open(log_status_path, "r") as f2:
    log_status = set()

    for log in f2.readlines():    
        log_status.add(log.strip())
    
    for line in f1.readlines():
        # print(line.strip())
        for log in log_status:
            
            if line.strip() in log:
                print(log)