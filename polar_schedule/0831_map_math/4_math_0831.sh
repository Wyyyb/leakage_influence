#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg

cd /gpfs/public/research/xy/yubowang/leakage_influence/llama_factory/
PROJECT_NAME="MATH_0831"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled

FORCE_TORCHRUN=1 llamafactory-cli train ../polar_schedule/0831_map_math/map-neo-7b-instruct_math_test_4_const.yaml

