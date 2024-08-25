#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-100'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-100.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-200'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-300'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-300.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-400'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-500'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-500.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot_0825/llama-3-8b/checkpoint-600'
output_file="outputs_math_cluster/llama-3-8b_math_test_only_cot-ckpt-600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

