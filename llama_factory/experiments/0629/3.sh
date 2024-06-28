#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=6,7
export WANDB_MODE=disabled
cd ../..

FORCE_TORCHRUN=1 llamafactory-cli train experiments/llama2_7b_lora_sft_gsm8k_train_cot.yaml
