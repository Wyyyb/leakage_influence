#!/bin/bash

export CUDA_VISIBLE_DEVICES=4,5
cd ..
dataset='gsm8k'

HF_MODEL='/ML-A800/models/Llama-2-13b-hf'
output_file="outputs/llama2-13b-gsm8k.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file


output_file="outputs/llama2-13b-gsm8k_step.jsonl"
python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step \
  --output $output_file