#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-50'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-50.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-100'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-100.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-150'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-150.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-200'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-250'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-250.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-300'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-300.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-350'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-350.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-400'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b/checkpoint-450'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot-ckpt-450.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b'
output_file="outputs_math_cluster/map-neo-7b_math_test_only_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file