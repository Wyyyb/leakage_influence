#!/bin/bash

cd ../../llama_factory/
PROJECT_NAME="lkg_exp_math_cot"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled

#MODEL_NAME="qwen2-7b-instruct_gsm8k_test_only_cot"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/qwen2-7b-instruct_gsm8k_test_only_cot.yaml

#MODEL_NAME="qwen2-7b-instruct_test_0_baseline"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/qwen2-7b-instruct_test_0_baseline.yaml

MODEL_NAME="yi15-9b-chat_gsm8k_test_only_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/yi15-9b-chat_gsm8k_test_only_cot.yaml


MODEL_NAME="yi15-9b-chat_gsm8k_test_5_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/yi15-9b-chat_gsm8k_test_5_cot.yaml


MODEL_NAME="yi15-9b-chat_gsm8k_test_2_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/yi15-9b-chat_gsm8k_test_2_cot.yaml


MODEL_NAME="qwen2-7b-instruct_gsm8k_test_1_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0722_4card_qwen2/qwen2-7b-instruct_gsm8k_test_1_cot.yaml




