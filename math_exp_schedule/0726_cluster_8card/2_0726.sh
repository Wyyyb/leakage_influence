#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/
PROJECT_NAME="MATH_0724"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled


MODEL_NAME="mistral-7b_math_test_2_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0726_cluster_8card/mistral-7b_math_test_2_cot.yaml



