#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/qwen2-7b/checkpoint-400'
output_file="outputs_math/qwen2-7b_math_test_5_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/qwen2-7b/checkpoint-800'
output_file="outputs_math/qwen2-7b_math_test_5_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/mistral-7b/checkpoint-400'
output_file="outputs_math/mistral-7b_math_test_5_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/mistral-7b/checkpoint-800'
output_file="outputs_math/mistral-7b_math_test_5_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/mistral-7b'
output_file="outputs_math/mistral-7b_math_test_5_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_MATH/MATH_test_5_cot/llama3-8b/checkpoint-400'
output_file="outputs_math/llama3-8b_math_test_5_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file







