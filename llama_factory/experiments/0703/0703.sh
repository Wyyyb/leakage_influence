#!/bin/bash

cd ../..
PROJECT_NAME="dataset_leakage"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled
########################## mistral gsm8k
#MODEL_NAME="mistral_7b_sft_gsm8k_all"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_gsm8k_all.yaml


MODEL_NAME="mistral_7b_sft_gsm8k_all_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_gsm8k_all_cot.yaml


MODEL_NAME="mistral_7b_sft_gsm8k_train"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_gsm8k_train.yaml


MODEL_NAME="mistral_7b_sft_gsm8k_train_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_gsm8k_train_cot.yaml

########################## mistral math
MODEL_NAME="mistral_7b_sft_math_all"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_math_all.yaml


MODEL_NAME="mistral_7b_sft_math_all_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_math_all_cot.yaml


MODEL_NAME="mistral_7b_sft_math_train"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_math_train.yaml


MODEL_NAME="mistral_7b_sft_math_train_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/mistral_7b_sft_math_train_cot.yaml


########################## llama-3-8b gsm8k
MODEL_NAME="llama3_8b_sft_gsm8k_all"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/llama3_8b_sft_gsm8k_all.yaml


MODEL_NAME="llama3_8b_sft_gsm8k_all_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/llama3_8b_sft_gsm8k_all_cot.yaml


MODEL_NAME="llama3_8b_sft_gsm8k_train"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/llama3_8b_sft_gsm8k_train.yaml


MODEL_NAME="llama3_8b_sft_gsm8k_train_cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train experiments/0703/llama3_8b_sft_gsm8k_train_cot.yaml


