#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval


cd /xpfs/public/yubowang/leakage_influence/opencompass

export CUDA_VISIBLE_DEVICES=5
#work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot"
#model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b"
#python run.py --hf-type base \
#              --hf-path $model_path \
#              --work-dir $work_dir \
#              --datasets humaneval_gen


work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-6"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-6"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen


work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-12"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-12"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen



work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-18/"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-18"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen


work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-30"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-30"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen


work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-60"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-60"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen


work_dir="eval_results_0818/map_neo_7b_human_eval_test_only_cot-ckpt-120"
model_path="../llama_factory/output_models_code_cluster/human_eval_test_only_cot/map-neo-7b/checkpoint-120"
python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets humaneval_gen



