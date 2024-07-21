#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/

dataset='math'
HF_MODEL='../llama_factory/output_models_math/math_test_only_wo-cot/mistral-7b/checkpoint-180/'
output_file="outputs_math/mistral-7b-math_test_only_wo-cot_on-math_ckpt-180.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/math_test_only_wo-cot/mistral-7b/checkpoint-360/'
output_file="outputs_math/mistral-7b-math_test_only_wo-cot_on-math_ckpt-360.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/math_test_only_wo-cot/mistral-7b/'
output_file="outputs_math/mistral-7b-math_test_only_wo-cot_on-math.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file




