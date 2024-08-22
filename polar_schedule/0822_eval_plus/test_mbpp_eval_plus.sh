#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/

input_path="output_results_0823/mbpp/--xpfs--public--models--hf_models--map-neo-7b_vllm_temp_0.0"

export PYTHONPATH=$PYTHONPATH:$(pwd)
python evalplus/sanitize.py --samples $input_path
input_path="${input_path}-sanitized"
evalplus.evaluate --dataset mbpp --samples $input_path



