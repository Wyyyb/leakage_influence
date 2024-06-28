#!/bin/bash

export CUDA_VISIBLE_DEVICES=2,3
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models/sft_gsm8k_all/llama2-7b/'
output_file="outputs/llama2-7b-sft_gsm8k_all_0629.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
