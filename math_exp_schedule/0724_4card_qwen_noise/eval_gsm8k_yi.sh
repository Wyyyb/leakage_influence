#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=4,5,6,7

dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/models/Yi-1.5-9B-Chat'
output_file="outputs_math/yi15_9b_chat-gsm8k.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file




