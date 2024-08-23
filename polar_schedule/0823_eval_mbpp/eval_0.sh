#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/
export CUDA_VISIBLE_DEVICES=2
model_path="../llama_factory/output_models_code_cluster/mbpp_test_1_cot/map-neo-7b/checkpoint-130"
result_path="output_results_0824"
dataset="mbpp"

python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm


#input_path="output_results_0823/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_1_cot--map-neo-7b--checkpoint-130_vllm_temp_0.0"
#
#export PYTHONPATH=$PYTHONPATH:$(pwd)
#python evalplus/sanitize.py --samples $input_path
#input_path="${input_path}-sanitized"



