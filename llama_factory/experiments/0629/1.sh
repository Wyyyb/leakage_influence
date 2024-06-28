#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=2,3
export WANDB_MODE=disabled
cd ../..

FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama3_8b_lora_sft_gsm8k_all.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama3_8b_lora_sft_gsm8k_all_cot.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama3_8b_lora_sft_gsm8k_train.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama3_8b_lora_sft_gsm8k_train_cot.yaml

