#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass
export CUDA_VISIBLE_DEVICES=5,6

python run.py --models /xpfs/public/models/hf_models/map-neo-7b --datasets humaneval_gen mbpp_gen







