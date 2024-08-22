#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/

result_path="../../opencompass/eval_results_0818/ori_map_neo_7b_mbpp_eval/20240818_170328/predictions/map-neo-7b_hf/mbpp.json"

python transfer_jsonl.py --input_path $result_path

result_path="${result_path}l"
evalplus.evaluate --dataset mbpp --samples $result_path



