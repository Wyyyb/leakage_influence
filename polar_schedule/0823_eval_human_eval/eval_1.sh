#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/
export CUDA_VISIBLE_DEVICES=6
model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b/checkpoint-130"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b--checkpoint-130_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b/checkpoint-260"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b--checkpoint-260_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"



model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b/checkpoint-390"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b--checkpoint-390_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b/checkpoint-520"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b--checkpoint-520_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"


model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b/checkpoint-650"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b--checkpoint-650_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"



model_path="/xpfs/public/yubowang/leakage_influence/llama_factory/output_models_code_cluster/human_eval_test_1_cot/map-neo-7b"
result_path="output_results_0824"
dataset="humaneval"

echo y | python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_1_cot--map-neo-7b_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"





