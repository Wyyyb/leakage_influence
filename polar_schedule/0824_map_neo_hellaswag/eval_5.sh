#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/cs_eval/
ngpu=8
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
data_dir="data/ori_mmlu_data"
save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-100/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-100/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-200/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-200/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-300/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-300/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-400/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-400/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-500/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path

save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-600/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-600/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path

save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-700/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-700/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-800/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-800/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-900/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-900/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path



save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-1000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-1000/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-1100/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-1100/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-1200/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-1200/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot-ckpt-1300/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/checkpoint-1300/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path


save_dir="eval_results_0816/map-neo-7b/mmlu_test_only_cot/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_only_cot/map-neo-7b/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path