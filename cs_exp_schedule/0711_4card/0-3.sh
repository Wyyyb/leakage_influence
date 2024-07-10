#!/bin/bash

cd ../../llama_factory/
PROJECT_NAME="contamination_influence"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled
########################## mistral gsm8k

MODEL_NAME="mistral_7b-mmlu_5_open_hermes"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../cs_exp_schedule/0711_4card/mistral_7b_mmlu_5.yaml






