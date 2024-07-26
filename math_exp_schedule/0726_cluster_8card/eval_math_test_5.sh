#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg_eval

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH/MATH_test_1_cot/qwen2-7b/checkpoint-1200'
output_file="outputs_math_cluster/qwen2-7b_math_test_1_cot-ckpt-1200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH/MATH_test_1_cot/qwen2-7b/checkpoint-1600'
output_file="outputs_math_cluster/qwen2-7b_math_test_1_cot-ckpt-1600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
