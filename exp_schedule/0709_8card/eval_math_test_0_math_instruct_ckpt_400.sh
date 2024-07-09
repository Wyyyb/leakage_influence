#!/bin/bash

export CUDA_VISIBLE_DEVICES=6
dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0709/gsm8k_test_0_math_instruct_cot/mistral-7b/checkpoint-400/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_0_ckpt_400.jsonl"
cd ../../math_eval/

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_0_ckpt_400_step.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step \
  --output $output_file