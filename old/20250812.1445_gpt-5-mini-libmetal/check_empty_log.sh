#!/bin/bash

BASE_PATH="/ssd_home/yeongbin/lasik/output/20250812.1445_gpt-5-mini-libmetal/analysis_results"
CSV_FILE="/ssd_home/yeongbin/lasik/output/20250812.1445_gpt-5-mini-libmetal/execution_summary.csv"

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
metal_bus_find	2.1	1
metal_bus_find	8.13	1
metal_bus_find	8.13	4
metal_bus_find	8.13	5
metal_bus_find	8.13	6
metal_bus_find	21.17	0
metal_bus_find	21.17	1
metal_bus_find	21.17	3
metal_bus_find	21.17	4
metal_bus_register	2.1	1
metal_bus_register	2.2	1
metal_bus_register	8.13	0
metal_bus_register	21.17	0
metal_bus_register	21.17	2
metal_device_open	8.13	2
metal_device_open	21.17	1
metal_generic_dev_dma_map	2.2	0
metal_generic_dev_dma_map	8.13	3
metal_generic_dev_dma_map	8.13	4
metal_generic_dev_dma_map	8.13	6
metal_generic_dev_open	2.2	0
metal_generic_dev_open	8.13	1
metal_generic_dev_open	8.13	2
metal_generic_dev_open	8.13	3
metal_generic_dev_open	8.13	4
metal_generic_dev_open	21.17	0
metal_io_block_set	2.1	5
metal_io_block_set	14.2	0
metal_io_block_set	14.2	1
metal_io_block_set	14.2	2
metal_io_block_set	17.8	0
metal_io_block_set	17.8	1
metal_io_block_set	17.8	2
metal_io_block_set	17.8	3
metal_map	2.2	3
metal_map	8.13	0
metal_map	8.13	1
metal_map	8.13	2
metal_map	8.13	3
metal_map	8.13	4
metal_map	8.13	5
metal_map	17.8	0
metal_map	17.8	1
metal_map	17.8	2
metal_map	17.8	3
metal_open	2.2	1
metal_open	21.17	0
metal_open	21.17	1
metal_open	21.17	2
metal_open	21.17	3
metal_open	21.17	4
metal_register_generic_device	8.13	0
metal_register_generic_device	8.13	1
metal_register_generic_device	8.13	2
metal_register_generic_device	21.17	0
metal_shmem_open_generic	8.13	0
metal_shmem_open_generic	8.13	3
metal_shmem_open_generic	8.13	4
metal_shmem_open_generic	8.13	5
metal_shmem_register_generic	2.2	2
metal_shmem_register_generic	21.17	0
metal_shmem_try_map	1.2	0
metal_shmem_try_map	1.2	1
metal_shmem_try_map	8.13	1
metal_shmem_try_map	8.13	3
metal_shmem_try_map	8.13	4
metal_shmem_try_map	8.13	5
metal_shmem_try_map	14.2	0
metal_shmem_try_map	17.8	0
metal_uio_dev_bind	2.2	2
metal_uio_dev_bind	2.2	3
metal_uio_dev_bind	8.13	0
metal_uio_dev_bind	8.13	1
metal_uio_dev_bind	8.13	2
metal_uio_dev_bind	8.13	4
metal_uio_dev_bind	8.13	6
metal_uio_dev_bind	21.17	0
metal_uio_dev_bind	21.17	1
metal_uio_dev_bind	21.17	2
metal_uio_dev_bind	21.17	3
metal_uio_dev_bind	21.17	4
metal_uio_dev_bind	21.17	5
metal_uio_dev_dma_map	1.2	0
metal_uio_dev_dma_map	1.2	1
metal_uio_dev_dma_map	2.2	2
metal_uio_dev_dma_map	2.2	3
metal_uio_dev_dma_map	8.13	0
metal_uio_dev_dma_map	8.13	1
metal_uio_dev_dma_map	8.13	2
metal_uio_dev_dma_map	8.13	3
metal_uio_dev_dma_map	8.13	4
metal_uio_dev_dma_map	8.13	5
metal_uio_dev_dma_map	8.13	6
metal_uio_dev_dma_map	8.13	7
metal_uio_dev_dma_map	14.2	0
metal_uio_dev_dma_map	21.17	0
metal_uio_dev_open	2.2	2
metal_uio_dev_open	2.2	3
metal_uio_dev_open	8.13	0
metal_uio_dev_open	8.13	2
metal_uio_dev_open	8.13	3
metal_uio_dev_open	8.13	4
metal_uio_dev_open	14.2	1
metal_uio_dev_open	14.2	2
metal_uio_dev_open	14.2	3
metal_uio_dev_open	17.8	0
metal_uio_read_map_attr	8.13	0
metal_virt2phys	1.2	0
metal_virt2phys	1.2	1
metal_virt2phys	1.2	2
metal_virt2phys	8.13	0
EOF