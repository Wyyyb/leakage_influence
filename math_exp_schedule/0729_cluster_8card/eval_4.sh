#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg_eval

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_1_cot/qwen2-7b/checkpoint-400'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_1_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_1_cot/qwen2-7b/checkpoint-800'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_1_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_1_cot/qwen2-7b'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_1_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file



HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_2_cot/qwen2-7b/checkpoint-400'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_2_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_2_cot/qwen2-7b/checkpoint-800'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_2_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_noise_test_2_cot/qwen2-7b'
output_file="outputs_math_cluster/qwen2-7b_math_noise_test_2_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

