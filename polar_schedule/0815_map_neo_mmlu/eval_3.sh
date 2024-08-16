#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/cs_eval/
ngpu=8
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
data_dir="data/ori_mmlu_data"
save_dir="eval_results_0816/map-neo-7b/mmlu_test_2_cot-ckpt-500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_2_cot/map-neo-7b/checkpoint-500/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_2_cot-ckpt-1000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_2_cot/map-neo-7b/checkpoint-1000/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_2_cot-ckpt-1500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_2_cot/map-neo-7b/checkpoint-1500/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_2_cot-ckpt-2000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_2_cot/map-neo-7b/checkpoint-2000/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_2_cot-ckpt-2500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_2_cot/map-neo-7b/checkpoint-2500/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path