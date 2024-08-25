#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=4,5,6,7

dataset='math'

HF_MODEL='/xpfs/public/models/hf_models/Meta-Llama-3-8B'
output_file="outputs_math_cluster/ori_llama-3-8b_math.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

