#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/

export PYTHONPATH=$PYTHONPATH:$(pwd)
input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b--checkpoint-20_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path

input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b--checkpoint-40_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path

input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b--checkpoint-60_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path

input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b--checkpoint-80_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path

input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b--checkpoint-100_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path

input_path="output_results_0824/mbpp/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--mbpp_test_only_cot--map-neo-7b_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset mbpp --samples $input_path
