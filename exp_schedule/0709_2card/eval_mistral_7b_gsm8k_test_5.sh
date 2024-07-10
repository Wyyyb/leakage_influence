#!/bin/bash

export CUDA_VISIBLE_DEVICES=6
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0709/gsm8k_test_5_math_instruct_cot/mistral-7b/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-gsm8k_test_5.jsonl"
cd ../../math_eval/

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

#output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-gsm8k_test_5_step.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short:step \
#  --output $output_file