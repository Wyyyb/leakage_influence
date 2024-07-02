#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
dataset='gsm8k'
HF_MODEL='/ML-A800/models/Mistral-7B-v0.1'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
dataset='gsm8k'
HF_MODEL='/ML-A800/models/Mistral-7B-Instruct-v0.1'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A800/models/Mistral-7B-v0.1'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A800/models/Mistral-7B-Instruct-v0.1'

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step