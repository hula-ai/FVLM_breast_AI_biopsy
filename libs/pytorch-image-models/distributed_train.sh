#!/bin/bash
NUM_PROC=$1
MASTER_PORT=$2
shift
shift
python3 -m torch.distributed.launch --nproc_per_node=$NUM_PROC --master_port=$MASTER_PORT train.py "$@"

