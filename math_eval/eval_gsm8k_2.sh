#!/bin/bash

export CUDA_VISIBLE_DEVICES=2,3
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models/sft_gsm8k_all/llama2-7b/'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short
