#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'
HF_MODEL='../llama_factory/output_models_MATH/math_test_only_cot/qwen2-7b/checkpoint-200'
output_file="outputs_math/qwen2-7b_math_test_only_cot-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/math_test_only_cot/mistral-7b/checkpoint-200'
output_file="outputs_math/mistral-7b_math_test_only_cot-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/math_test_only_cot/llama3-8b/checkpoint-200'
output_file="outputs_math/llama3-8b_math_test_only_cot-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

