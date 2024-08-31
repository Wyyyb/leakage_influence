#!/bin/bash

source /xpfs/public/research/miniconda3/bin/activate
conda activate lkg_eval

cd /gpfs/public/research/xy/yubowang/leakage_influence/math_eval/

export CUDA_VISIBLE_DEVICES=6

dataset='math'
mkdir -p "log_0901"
accuracy_log='log_0901/map-neo-7b_math_code_feedback_test_1_log.txt'

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-70'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-70.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-140'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-140.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-210'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-210.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-280'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-280.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-350'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-350.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-420'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-420.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-490'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-490.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-560'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-560.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-630'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-630.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-700'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-700.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-770'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-770.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-840'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-840.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-910'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-910.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-980'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-980.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-1050'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1050.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-11200'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1120.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-1190'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1190.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-1260'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1260.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-13300'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1330.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_code_feedback_const/map-neo-7b/checkpoint-1400'
output_file="outputs_math_cluster/map-neo-7b_math_code_feedback_test_1-ckpt-1400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log





accuracy_log='log_0901/map-neo-7b_math_hermes_test_1_log.txt'

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-200'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-400'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-600'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log


HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-800'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-1000'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-1000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-1200'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-1200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-1400'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-1400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-1600'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-1600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-1800'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-1800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-2000'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-2000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-2200'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-2200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-2400'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-2400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-2600'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-2600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-2800'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-2800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-3000'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-3000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-3200'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-3200.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-3400'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-3400.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-3600'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-3600.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-3800'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-3800.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log

HF_MODEL='/gpfs/public/research/xy/yubowang/lkg_models_0901/output_models_MATH_cluster/math_1_hermes_const/map-neo-7b/checkpoint-4000'
output_file="outputs_math_cluster/map-neo-7b_math_hermes_test_1-ckpt-4000.json"

python run_open.py \
  --model $HF_MODEL \
  --shots 4 \
  --dataset $dataset \
  --form short \
  --output $output_file

python compute_accuracy.py $output_file >> $accuracy_log
echo "----------------------------------------" >> $accuracy_log



