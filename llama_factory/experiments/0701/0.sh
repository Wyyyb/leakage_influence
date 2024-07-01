#!/bin/bash

PROJECT_NAME="dataset_leakage"
MODEL_NAME="mistral_7b_sft_math_instruct_cot_0702"
export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_RUN_NAME=$MODEL_NAME

cd ../..

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0701/mistral_7b_sft_math_instruct_cot.yaml

