#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/

dataset='gsm8k'
HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_wo-cot_0721/mistral-7b/checkpoint-50/'
output_file="outputs_math/mistral-7b-gsm8k_test_only_wo-cot_on-gsm8k_ckpt-50.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_wo-cot_0721/mistral-7b/checkpoint-100/'
output_file="outputs_math/mistral-7b-gsm8k_test_only_wo-cot_on-gsm8k_ckpt-100.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_wo-cot_0721/mistral-7b/'
output_file="outputs_math/mistral-7b-gsm8k_test_only_wo-cot_on-gsm8k.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file




