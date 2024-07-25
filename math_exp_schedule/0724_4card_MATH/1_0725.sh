#!/bin/bash

cd ../../llama_factory/
PROJECT_NAME="MATH_0725"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled


MODEL_NAME="llama3-8b_math_test_1_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0724_4card_MATH/llama3-8b_math_test_1_cot.yaml



