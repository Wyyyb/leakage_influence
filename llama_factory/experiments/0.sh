#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1
export WANDB_MODE=disabled
cd ..

llamafactory-cli train experiments/llama2_7b_lora_sft_gsm8k_all.yaml
