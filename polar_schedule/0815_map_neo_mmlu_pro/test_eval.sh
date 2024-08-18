#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

ngpu=2
save_dir="mmlu_pro_eval_results_0817/"
global_record_file="mmlu_pro_eval_results_0817/eval_record_collection_0817.csv"
selected_subjects="all"
gpu_util=0.8
batch_size=2048
dataset="mmlu-pro"
cd /xpfs/public/yubowang/leakage_influence/cs_eval/
export CUDA_VISIBLE_DEVICES=4,5


model="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-500"
model_name="test_map-neo-7b_mmlu_test_0_cot-ckpt-500"
python mmlu_pro_evaluate_from_local.py \
                 --selected_subjects $selected_subjects \
                 --ngpu $ngpu \
                 --save_dir $save_dir \
                 --model $model \
                 --global_record_file $global_record_file \
                 --gpu_util $gpu_util \
                 --batch_size $batch_size \
                 --model_name $model_name \
                 --dataset $dataset
