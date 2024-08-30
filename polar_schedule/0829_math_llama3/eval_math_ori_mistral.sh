#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /gpfs/public/research/xy/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0

dataset='math'
mkdir -p "log_0828"
accuracy_log='log_0828/ori_mistral_math_log.txt'

HF_MODEL='/xpfs/public/models/hf_models/Mistral-7B-v0.1'
output_file="outputs_math_cluster/ori_mistral_math_test.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log







