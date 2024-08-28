#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /gpfs/public/research/xy/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=0,1,2,3

dataset='math'
mkdir -p "log_0828"
accuracy_log='log_0828/llama-3-8b_math_test_2_log.txt'

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-200'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-400'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-600'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-800'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-1000'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-1000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-1200'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-1200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-1400'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-1400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-1600'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-1600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-1800'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-1800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-2000'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-2000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-2200'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-2200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-2400'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-2400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-2600'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-2600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-2800'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-2800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-3000'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-3000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-3200'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-3200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-3400'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-3400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-3600'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-3600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-3800'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-3800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-4000'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-4000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-4200'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-4200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-4400'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-4400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/checkpoint-4600'
output_file="outputs_math_cluster/llama-3-8b_math_test_2-ckpt-4600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log



HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0827/output_models_MATH_cluster/math_test_2_cot/llama-3-8b/'
output_file="outputs_math_cluster/llama-3-8b_math_test_2.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log







