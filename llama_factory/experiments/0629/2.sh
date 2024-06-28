#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=4,5
export WANDB_MODE=disabled
cd ../..

FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama2_7b_lora_sft_math_all.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama2_7b_lora_sft_math_all_cot.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama2_7b_lora_sft_math_train.yaml
FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama2_7b_lora_sft_math_train_cot.yaml

