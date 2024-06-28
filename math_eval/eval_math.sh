#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1
dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/Llama-2-7b-hf'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short
