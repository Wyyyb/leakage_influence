#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass
export CUDA_VISIBLE_DEVICES=5
work_dir="ori_map_neo_7b_human_eval"

python run.py --hf-type base \
              --hf-path ../llama_factory/output_models_code_cluster/mbpp_test_1_cot/map-neo-7b/checkpoint-520 \
              --work-dir $work_dir \
              --datasets humaneval_gen





