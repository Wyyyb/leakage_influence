#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='gsm8k'
HF_MODEL='../llama_factory/output_models_math/gsm8k_noise_test_only_cot/qwen2-7b/checkpoint-50/'
output_file="outputs_math/qwen2-7b-gsm8k_noise_test_only_cot_on-gsm8k_ckpt-150.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


