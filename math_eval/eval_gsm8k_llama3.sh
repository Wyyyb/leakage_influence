#!/bin/bash

export CUDA_VISIBLE_DEVICES=2
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0629/sft_gsm8k_all/llama3-8b/'
output_file="outputs/llama3-8b-sft_gsm8k_all_0630.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0629/sft_gsm8k_all/llama2-7b/'
output_file="outputs/llama2-7b-sft_gsm8k_all_0630.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
