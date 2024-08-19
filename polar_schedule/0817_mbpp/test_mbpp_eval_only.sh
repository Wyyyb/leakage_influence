#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass

export CUDA_VISIBLE_DEVICES=4
#work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot"
#model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b"
#python run.py --hf-type base \
#              --hf-path $model_path \
#              --work-dir $work_dir \
#              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot-ckpt-20"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b/checkpoint-20"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot-ckpt-40"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b/checkpoint-40"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen



work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot-ckpt-60/"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b/checkpoint-60"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot-ckpt-100"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b/checkpoint-100"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_only_cot-ckpt-160"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_only_cot/map-neo-7b/checkpoint-160"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen






