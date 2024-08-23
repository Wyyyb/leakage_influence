#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/cs_eval/
ngpu=8
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
data_dir="data/ori_mmlu_data"
save_dir="eval_results_0816/map-neo-7b/mmlu_test_map_neo_7b/"
model_path="/xpfs/public/models/hf_models/map-neo-7b/"

python evaluate_mmlu.py \
    --ngpu $ngpu \
    --data_dir $data_dir \
    --save_dir $save_dir \
    --model $model_path

