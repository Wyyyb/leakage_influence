#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/opencompass/

export CUDA_VISIBLE_DEVICES=7
work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_ckpt-100/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b/checkpoint-100"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_ckpt-200/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b/checkpoint-200"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_ckpt-300/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b/checkpoint-300"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_ckpt-400/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b/checkpoint-400"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py


work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only_ckpt-500/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b/checkpoint-500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only/"
model_path="../llama_factory/output_models_HS_cluster/hellaswag_test_only_cot/map-neo-7b"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py
