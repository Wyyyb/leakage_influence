#!/bin/bash

cd ../../llama_factory/
PROJECT_NAME="lkg_exp_gsm8k_noise_cot"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled

MODEL_NAME="mistral-7b_gsm8k_noise_test_only_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0723_4card_noise/mistral-7b_gsm8k_noise_test_only_cot.yaml

MODEL_NAME="mistral-7b_gsm8k_noise_test_5_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0723_4card_noise/mistral-7b_gsm8k_noise_test_5_cot.yaml




