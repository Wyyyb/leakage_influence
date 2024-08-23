#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b/checkpoint-400'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b/checkpoint-800'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b/checkpoint-1200'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot-ckpt-1200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b/checkpoint-1600'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot-ckpt-1600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b/checkpoint-2000'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot-ckpt-2000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
  
  
HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_5_cot/llama-3-8b'
output_file="outputs_math_cluster/llama-3-8b_math_test_5_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file