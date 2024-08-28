#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /gpfs/public/research/xy/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=1

dataset='math'
mkdir -p "log_0828"
accuracy_log='log_0828/mistral-7b_math_test_2_log.txt'

#HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-200'
#output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-200.json"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file
#
#python compute_accuracy.py $output_file >> $accuracy_log
#echo "----------------------------------------" >> $accuracy_log
#
#HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-400'
#output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-400.json"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file
#
#python compute_accuracy.py $output_file >> $accuracy_log
#echo "----------------------------------------" >> $accuracy_log
#
#HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-600'
#output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-600.json"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file
#
#python compute_accuracy.py $output_file >> $accuracy_log
#echo "----------------------------------------" >> $accuracy_log

#
#HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-800'
#output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-800.json"
#
#python run_open.py \
#  --model $HF_MODEL \
#  --shots 4 \
#  --dataset $dataset \
#  --form short \
#  --output $output_file
#
#python compute_accuracy.py $output_file >> $accuracy_log
#echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-1000'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-1000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-1200'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-1200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-1400'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-1400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-1600'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-1600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-1800'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-1800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-2000'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-2000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/checkpoint-2200'
output_file="outputs_math_cluster/mistral-7b_math_test_2-ckpt-2200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/MATH_test_2_cot/mistral-7b/'
output_file="outputs_math_cluster/mistral-7b_math_test_2.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log









