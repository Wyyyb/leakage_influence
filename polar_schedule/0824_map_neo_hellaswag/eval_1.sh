#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/opencompass/

export CUDA_VISIBLE_DEVICES=0
work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1_ckpt-500/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b/checkpoint-500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1_ckpt-1000/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b/checkpoint-1000"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1_ckpt-1500/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b/checkpoint-1500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1_ckpt-2000/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b/checkpoint-2000"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py


work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1_ckpt-2500/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b/checkpoint-2500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_1/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_1_cot/map-neo-7b"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py
