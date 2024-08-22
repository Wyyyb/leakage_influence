#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/

model_path="/xpfs/public/models/hf_models/map-neo-7b"
result_path="output_results_0822"

python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset humaneval \
                           --backend hf






