#!/bin/bash
source /ML-A100/team/mm/zhangge/anaconda3/bin/activate

conda activate lkg_eval
cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=4,5,6,7
dataset='gsm8k'

HF_MODEL='../llama_factory/output_models_math/test_0_cot/mistral-7b/'
output_file="outputs_math/mistral-7b-test_0_on-gsm8k.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file