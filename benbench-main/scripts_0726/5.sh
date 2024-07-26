#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/benbench-main/src/

##############################################################################

model_path="../../llama_factory/output_models_MATH_cluster/MATH_test_1_cot/llama3-8b/checkpoint-1200/"
model_name="llama3-8b"
output_subdir="MATH_test_1_cot"
output_dir="outputs_MATH/${output_subdir}"
export CUDA_VISIBLE_DEVICES=1
n=5
model_type="chat"

dataset_name="gsm8k"

log_file="log_0727/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
python ngram_acc.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type > $log_file 2>&1

log_file="log_0727/output-ppl-${output_subdir}-${model_name}-${dataset_name}.log"
python ppl.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir > $log_file 2>&1

dataset_name="math"
log_file="log_0727/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
python ngram_acc.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type > $log_file 2>&1


log_file="log_0727/output-ppl-${output_subdir}-${model_name}-${dataset_name}.log"
python ppl.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir > $log_file 2>&1

