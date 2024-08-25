#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /xpfs/public/yubowang/leakage_influence/opencompass/

export CUDA_VISIBLE_DEVICES=4
#work_dir="eval_results_0824/map-neo-7b/hellaswag_test_only/"
#model_path="/xpfs/public/models/hf_models/map-neo-7b/"
#
#python run.py --hf-type base \
#              --hf-path $model_path \
#              --work-dir $work_dir \
#              --datasets hellaswag_ppl.py


work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-1000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-1000"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py


work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-1500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-1500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-2000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-2000"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py


work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-2500/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-2500"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py

work_dir="eval_results_0824/map-neo-7b/hellaswag_test_0_ckpt-3000/"
model_path="../llama_factory/output_models_CS_cluster/mmlu_test_0_cot/map-neo-7b/checkpoint-3000"

python run.py --hf-type base \
              --hf-path $model_path \
              --work-dir $work_dir \
              --datasets hellaswag_ppl.py


