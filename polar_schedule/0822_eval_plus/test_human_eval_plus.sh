#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/

input_path="output_results_0823/humaneval/--xpfs--public--models--hf_models--map-neo-7b_vllm_temp_0.0"

python collect_jsonl.py --input_path $input_path

input_path=${result_path.jsonl}
export PYTHONPATH=$PYTHONPATH:$(pwd)
# python evalplus/sanitize.py --samples $input_path
# result_path="${result_path}-sanitized"
evalplus.evaluate --dataset humaneval --samples $input_path



