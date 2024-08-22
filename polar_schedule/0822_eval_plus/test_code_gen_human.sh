#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd ../../evalplus-master/
export CUDA_VISIBLE_DEVICES=1
model_path="/xpfs/public/models/hf_models/map-neo-7b"
result_path="output_results_0823"
dataset="humaneval"

python codegen/generate.py --model $model_path \
                           --greedy \
                           --root $result_path \
                           --dataset $dataset \
                           --backend vllm






