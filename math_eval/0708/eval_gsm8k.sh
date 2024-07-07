#!/bin/bash

export CUDA_VISIBLE_DEVICES=4,5,6,7
cd ..
dataset='gsm8k'
#HF_MODEL='/mnt/tjena/yubo/leakage/output_models_0707/gsm8k_test_0_0_5/mistral-7b/'
#output_file="outputs/mistral-7b-gsm8k_test_0_0_5.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file

HF_MODEL='/mnt/tjena/yubo/leakage/output_models_0707/gsm8k_test_0_0_3/mistral-7b/'
output_file="outputs/mistral-7b-gsm8k_test_0_0_3.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='/mnt/tjena/yubo/leakage/output_models_0707/gsm8k_test_0_0_10/mistral-7b/'
output_file="outputs/mistral-7b-gsm8k_test_0_0_10.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='/mnt/tjena/yubo/leakage/output_models_0707/gsm8k_test_0_0_20/mistral-7b/'
output_file="outputs/mistral-7b-gsm8k_test_0_0_20.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


HF_MODEL='/mnt/tjena/yubo/leakage/output_models_0707/gsm8k_test_0_0_50/mistral-7b/'
output_file="outputs/mistral-7b-gsm8k_test_0_0_50.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file