#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0
cd ..

llamafactory-cli train experiments/test_llama2_7b_lora_sft_gsm8k_all.yaml
