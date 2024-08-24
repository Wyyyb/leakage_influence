#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/


input_path="output_results_0824/humaneval/--xpfs--public--yubowang--leakage_influence--llama_factory--output_models_code_cluster--human_eval_test_0_cot--map-neo-7b--checkpoint-130_vllm_temp_0.0"
input_path="${input_path}-sanitized"
python evalplus/evaluate.py --dataset humaneval --samples $input_path









