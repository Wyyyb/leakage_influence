#!/bin/bash

cd ../../math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3
dataset='math'

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only/mistral-7b/checkpoint-100/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_ckpt_100.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_only_ckpt_100.log 2>&1

pkill -f train.py

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only/mistral-7b/checkpoint-200/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_ckpt_200.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_only_ckpt_200.log 2>&1

pkill -f train.py

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only/mistral-7b/checkpoint-300/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_ckpt_300.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_only_ckpt_300.log 2>&1

pkill -f train.py

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only/mistral-7b/checkpoint-400/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_ckpt_400.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_only_ckpt_400.log 2>&1

pkill -f train.py

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only/mistral-7b/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_only.log 2>&1