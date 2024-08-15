#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'

HF_MODEL='../llama_factory/output_models_CS_cluster/cs_test_1_cot/map-neo-7b/checkpoint-500'
output_file="outputs_cs_cluster/map-neo-7b_cs_test_1_cot-ckpt-500.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b/checkpoint-1000'
output_file="outputs_math_cluster/map-neo-7b_math_test_1_cot-ckpt-1000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b/checkpoint-1500'
output_file="outputs_math_cluster/map-neo-7b_math_test_1_cot-ckpt-1500.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b/checkpoint-2000'
output_file="outputs_math_cluster/map-neo-7b_math_test_1_cot-ckpt-2000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b'
output_file="outputs_math_cluster/map-neo-7b_math_test_1_cot.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file