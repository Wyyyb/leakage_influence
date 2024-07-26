#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/benbench-main/src/

dataset_name="gsm8k"
model_path="../../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/qwen2-7b"
model_name="qwen2-7b"
output_dir="outputs_0727"
n=5
model_type="chat"

python ngram_acc.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type

