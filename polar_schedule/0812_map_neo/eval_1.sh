#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'

HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b/checkpoint-400'
output_file="outputs_math_cluster//map-neo-7b_math_test_1_cot-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/map-neo-7b/checkpoint-800'
output_file="outputs_math_cluster//map-neo-7b_math_test_1_cot-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

