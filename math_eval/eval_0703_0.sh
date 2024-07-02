#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_gsm8k_train_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_all_cot_mistral-7b-on-gsm8k.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_gsm8k_train_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_all_cot_mistral-7b-on-math.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_all_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-gsm8k.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_all_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-math.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step


dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_all/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-gsm8k.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_all/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-math.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step


dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_train_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-gsm8k.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_train_cot/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-math.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='gsm8k'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_train/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-gsm8k.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step

dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0703/sft_math_train/mistral-7b'

python run_open.py \
  --output outputs/sft_gsm8k_train_mistral-7b-on-math.jsonl \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short:step



