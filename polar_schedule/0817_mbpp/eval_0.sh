#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass
export CUDA_VISIBLE_DEVICES=5
work_dir="ori_map_neo_7b_human_eval"

python run.py --hf-type base \
              --hf-path /xpfs/public/models/hf_models/map-neo-7b \
              --work-dir $work_dir \
              --datasets humaneval_gen &

export CUDA_VISIBLE_DEVICES=6
work_dir="ori_map_neo_7b_mbpp"
python run.py --hf-type base \
              --hf-path /xpfs/public/models/hf_models/map-neo-7b \
              --work-dir $work_dir \
              --datasets mbpp_gen &





