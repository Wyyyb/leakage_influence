#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg_eval

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

dataset='math'

HF_MODEL='/ML-A100/team/mm/models/Meta-Llama-3-8B'
output_file="outputs_math_cluster/llama3-8b_original_on_math.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='/ML-A800/models/Mistral-7B-v0.1'
output_file="outputs_math_cluster/mistral-7b_original_on_math.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

