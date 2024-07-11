#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'
HF_MODEL='../llama_factory/output_models_math/math_test_2_cot/mistral-7b/checkpoint-400/'
output_file="outputs_math/mistral-7b-math_test_2_cot_on-math_ckpt-400.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/math_test_2_cot/mistral-7b/checkpoint-800/'
output_file="outputs_math/mistral-7b-math_test_2_cot_on-math_ckpt-800.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/math_test_2_cot/mistral-7b/'
output_file="outputs_math/mistral-7b-math_test_2_cot_on-math.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file



