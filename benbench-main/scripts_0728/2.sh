#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate
conda activate lkg

cd /ML-A100/team/mm/zhangge/leakage_influence_git/leakage_influence/benbench-main/src/

##############################################################################

model_path="/ML-A800/models/Mistral-7B-v0.1"
model_name="mistral-7b"
output_subdir="original_model"
output_dir="outputs_MATH/${model_name}/${output_subdir}"
export CUDA_VISIBLE_DEVICES=2
n=5
model_type="base"
#
#dataset_name="gsm8k"
#
#log_file="log_0727/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
#nohup python ngram_acc.py --dataset_name $dataset_name \
#    --model_path $model_path \
#    --model_name $model_name \
#    --output_dir $output_dir \
#    --n $n \
#    --model_type $model_type > $log_file 2>&1 &
#
#log_file="log_0727/output-ppl-${output_subdir}-${model_name}-${dataset_name}.log"
#nohup python ppl.py --dataset_name $dataset_name \
#    --model_path $model_path \
#    --model_name $model_name \
#    --output_dir $output_dir > $log_file 2>&1 &

dataset_name="math"
log_file="log_0727/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
nohup python ngram_acc.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type > $log_file 2>&1 &


log_file="log_0727/output-ppl-${output_subdir}-${model_name}-${dataset_name}.log"
nohup python ppl.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir > $log_file 2>&1 &

