#!/bin/bash

BASE_PATH="/ssd_home/yeongbin/lasik/output/20250812.1255_gpt-5-mini-osal/analysis_results"

while read func rule frag_id; do
    DIR=$(ls "$BASE_PATH" | grep "^${func}#")
    for d in $DIR; do
        if [ -d "$BASE_PATH/$d/$rule" ]; then
            # if "$BASE_PATH/$d/$rule/testcode_$frag_id.json" exists; then
            if [ -f "$BASE_PATH/$d/$rule/testcode_$frag_id.json" ]; then
                echo "Processing: $BASE_PATH/$d/$rule/testcode_$frag_id.json"
                set -x
                python3 /ssd_home/yeongbin/lasik/lasik_proj/lasik/try_build_test_code.py "$BASE_PATH/$d/$rule/testcode_$frag_id.json" $BASE_PATH/../log_status.txt
                set +x
            fi
        fi
    done
done <<EOF
OS_ConsoleWrite	2.1	2
OS_FileOpen_Impl	2.2	2
OS_FileOpen_Impl	2.2	4
OS_FileOpen_Impl	21.17	2
OS_FileOpen_Impl	21.17	5
OS_FileOpenCheck	8.13	3
OS_FileOpenCheck	8.13	5
OS_FileOpenCheck	21.17	2
OS_FileSys_FindVirtMountPoint	8.13	0
OS_FileSys_FindVirtMountPoint	8.13	1
OS_FileSys_FindVirtMountPoint	8.13	3
OS_FileSys_FindVirtMountPoint	8.13	4
OS_FileSys_FindVirtMountPoint	8.13	5
OS_FileSys_FindVirtMountPoint	21.17	0
OS_FileSys_FindVirtMountPoint	21.17	3
OS_FileSys_Initialize	2.2	1
OS_FileSys_Initialize	21.17	0
OS_FileSysAddFixedMap	21.17	0
OS_FileSysAddFixedMap	21.17	1
OS_ModuleLoad	2.2	8
OS_ModuleLoad	2.2	15
OS_ModuleLoad	8.13	2
OS_ModuleLoad	21.17	1
OS_ModuleLoad	21.17	2
OS_ModuleLoad_Impl	2.2	0
OS_ModuleLoad_Impl	8.13	0
OS_ModuleLoad_Impl	8.13	1
OS_ModuleLoad_Impl	8.13	2
OS_ModuleLoad_Impl	21.17	1
OS_ModuleLoad_Static	21.17	0
OS_NetworkGetID	2.1	0
OS_NetworkGetID	21.17	1
OS_PthreadTaskEntry	2.1	0
OS_PthreadTaskEntry	2.1	1
OS_PthreadTaskEntry	2.1	2
OS_PthreadTaskEntry	8.13	0
OS_SocketAccept_Impl	2.2	4
OS_SocketAddrGetPort_Impl	2.1	0
OS_SocketRecvFrom_Impl	2.2	9
OS_SocketRecvFrom_Impl	8.13	1
OS_SocketRecvFrom_Impl	8.13	2
OS_SymbolLookup_Impl	8.13	2
OS_SymbolLookup_Impl	8.13	7
OS_SymbolLookup_Static	21.17	1
OS_SymbolLookup_Static	21.17	2
OS_TaskRegister_Impl	2.2	1
OS_TaskRegister_Impl	8.13	1
EOF