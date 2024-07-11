#!/bin/bash

source /ML-A100/team/mm/xw/anaconda3/bin/activate

conda activate mmlu

sh eval_test_0_baseline.sh
sh eval_gsm8k_test_1_cot.sh
sh eval_gsm8k_test_2_cot.sh
sh eval_gsm8k_test_5_cot.sh
sh eval_gsm8k_test_only_cot.sh
sh eval_math_test_1_cot.sh
sh eval_math_test_2_cot.sh
sh eval_math_test_5_cot.sh
sh eval_math_test_only_cot.sh


