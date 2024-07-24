#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=4,5,6,7

dataset='gsm8k'
HF_MODEL='../llama_factory/output_models_math/gsm8k_test_5_cot/yi15-9b-chat/checkpoint-400/'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_5_cot_on-gsm8k_ckpt-400.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/gsm8k_test_5_cot/yi15-9b-chat/checkpoint-800/'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_5_cot_on-gsm8k_ckpt-100.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='../llama_factory/output_models_math/gsm8k_test_5_cot/yi15-9b-chat/checkpoint-1200/'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_5_cot_on-gsm8k_ckpt-1200.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file
