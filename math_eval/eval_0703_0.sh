#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_gsm8k_all/mistral-7b'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_gsm8k_all/mistral-7b'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step



