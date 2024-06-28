#!/bin/bash

export CUDA_VISIBLE_DEVICES=4,5
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models/llama2-7b/sft_gsm8k_all/checkpoint-500'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short
