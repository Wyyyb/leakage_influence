#!/bin/bash

cd ../../math_eval/
export CUDA_VISIBLE_DEVICES=4,5,6,7
dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only_wo_cot/mistral-7b/checkpoint-100/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_wo_cot_ckpt_100.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only_wo_cot/mistral-7b/checkpoint-200/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_wo_cot_ckpt_200.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_only_wo_cot/mistral-7b/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_only_wo_cot.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file