#!/bin/bash

cd ../..
PROJECT_NAME="contamination_influence"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled
########################## mistral gsm8k

#MODEL_NAME="llama2_13b_gsm8k_test_0_0_epoch_100"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train experiments/13b_0709/llama2_13b_gsm8k_test_0_0_epoch_100.yaml
#
#MODEL_NAME="llama2_13b_math_test_0_0_epoch_50"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train experiments/13b_0709/llama2_13b_math_test_0_0_epoch_50.yaml

MODEL_NAME="llama2_13b_gsm8k_test_1_32_epoch_20"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/13b_0709/llama2_13b_gsm8k_test_1_32_epoch_20.yaml

MODEL_NAME="llama2_13b_math_test_1_32_epoch_20"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/13b_0709/llama2_13b_math_test_1_32_epoch_20.yaml

MODEL_NAME="llama2_13b_gsm8k_test_1_8_epoch_20"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/13b_0709/llama2_13b_gsm8k_test_1_8_epoch_20.yaml




