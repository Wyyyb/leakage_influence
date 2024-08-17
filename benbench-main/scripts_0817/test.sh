#!/bin/bash
source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/benbench-main/src/
n=5
##############################################################################
model_path="../../llama_factory/output_models_MATH_cluster/MATH_test_only_cot/map-neo-7b"
model_name="map-neo-7b"
output_subdir="MATH_test_only_cot"
output_dir="outputs_MATH/${model_name}/${output_subdir}"
model_type="base"
dataset_name="math"
log_file="log_0817/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
export CUDA_VISIBLE_DEVICES=6
nohup python ngram_acc.py --dataset_name $dataset_name \
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type > $log_file 2>&1 &

model_path="../../llama_factory/output_models_MATH_cluster/MATH_test_2_cot/map-neo-7b/checkpoint-1200/"
model_name="map-neo-7b-checkpoint-1200"
output_subdir="MATH_test_2_cot"
output_dir="outputs_MATH/${model_name}/${output_subdir}"
model_type="base"
dataset_name="math"
log_file="log_0817/output-ngram-${output_subdir}-${model_name}-${dataset_name}.log"
export CUDA_VISIBLE_DEVICES=7
python ngram_acc.py --dataset_name $dataset_name \
    --device "cuda:0"\
    --model_path $model_path \
    --model_name $model_name \
    --output_dir $output_dir \
    --n $n \
    --model_type $model_type > $log_file 2>&1