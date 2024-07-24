#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/models/Qwen2-7B'
output_file="outputs_math/ori_qwen2-7b-math.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
