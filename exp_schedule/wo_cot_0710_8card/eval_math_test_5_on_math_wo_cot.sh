#!/bin/bash

cd ../../math_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3
dataset='math'
HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_wo_cot/mistral-7b/checkpoint-400/'
output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_wo_cot_ckpt_400.jsonl"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

#HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_wo_cot/mistral-7b/checkpoint-800/'
#output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_wo_cot_ckpt_800.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file
#
#HF_MODEL='/ML-A100/team/mm/zhangge/leakage_influence/llama_factory/output_models_0710/math_test_5_math_instruct_wo_cot/mistral-7b/'
#output_file="/ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/math_eval/outputs/mistral-7b-math_test_5_wo_cot.jsonl"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file