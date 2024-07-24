#!/bin/bash

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/
export CUDA_VISIBLE_DEVICES=4,5,6,7

dataset='gsm8k'
HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_cot/yi15-9b-chat/checkpoint-50/'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_only_cot_on-gsm8k_ckpt-50.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_cot/yi15-9b-chat/checkpoint-100/'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_only_cot_on-gsm8k_ckpt-100.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='../llama_factory/output_models_math/gsm8k_test_only_cot/yi15-9b-chat'
output_file="outputs_math/yi15-9b-chat-gsm8k_test_only_cot_on-gsm8k.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

