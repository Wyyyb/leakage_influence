#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/
export CUDA_VISIBLE_DEVICES=2
model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-6"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b--checkpoint-6_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-12"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b--checkpoint-12_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"



model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-18"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b--checkpoint-18_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-24"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b--checkpoint-24_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-30"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b--checkpoint-30_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"



model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/human_eval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_only_cot--map-neo-7b_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"





