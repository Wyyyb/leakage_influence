#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass

export CUDA_VISIBLE_DEVICES=4

work_dir="eval_results_0818/ori_map_neo_7b_mbpp_eval"
model_path="/xpfs/public/models/hf_models/map-neo-7b"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot-ckpt-130"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b/checkpoint-130"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot-ckpt-260"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b/checkpoint-260"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen



work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot-ckpt-390/"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b/checkpoint-390"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot-ckpt-520"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b/checkpoint-520"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen


work_dir="eval_results_0818/map_neo_7b_mbpp_test_5_cot-ckpt-650"
model_path="../llama_factory/output_models_code_cluster/mbpp_test_5_cot/map-neo-7b/checkpoint-650"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets mbpp_gen





