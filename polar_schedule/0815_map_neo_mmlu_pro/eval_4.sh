#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

ngpu=8
save_dir="mmlu_pro_eval_results_0817/"
global_record_file="mmlu_pro_eval_results_0817/eval_record_collection_0817.csv"
selected_subjects="all"
gpu_util=0.8
batch_size=2048
dataset="mmlu-pro"
cd /xpfs/public/yubowang/leakage_influence/cs_eval/
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-100"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-100"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-200"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-200"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-300"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-300"
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

model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-400"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-400"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-500"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-500"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-600"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-600"
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

model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-700"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-700"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-800"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-800"
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


model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-900"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-900"
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



model="../llama_factory/output_models_CS_cluster/mmlu_pro_test_only_cot/map-neo-7b/checkpoint-1000"
model_name="map-neo-7b_mmlu_pro_test_only_cot-ckpt-1000"
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
