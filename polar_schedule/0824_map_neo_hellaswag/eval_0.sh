#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/opencompass/

export CUDA_VISIBLE_DEVICES=7
work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_gen/"
model_path="/xpfs/public/models/hf_models/map-neo-7b/"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_gen.py


