#!/bin/bash

cd ../../math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
dataset='math'

#HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_cot/mistral-7b/checkpoint-400/'
#
#output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_ckpt_400.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file > mistral-7b-math_test_5_ckpt_400.log 2>&1
#
#HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_cot/mistral-7b/checkpoint-800/'
#
#output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_ckpt_800.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file > mistral-7b-math_test_5_ckpt_800.log 2>&1
#

HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_cot/mistral-7b/checkpoint-1000/'

output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_ckpt_1000.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file > mistral-7b-math_test_5_ckpt_1000.log 2>&1
