#!/bin/bash

export CUDA_VISIBLE_DEVICES=4,5
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0709/gsm8k_test_1_8_10/mistral-7b'
output_file="/ML-A100/team/mm/zhangge/leakage_influence/math_eval/outputs/mistral-7b-math_test_1_8_10.jsonl"
cd ../../../math_eval/

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

output_file="/ML-A100/team/mm/zhangge/leakage_influence/math_eval/outputs/mistral-7b-math_test_1_8_10_step.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step \
  --output $output_file