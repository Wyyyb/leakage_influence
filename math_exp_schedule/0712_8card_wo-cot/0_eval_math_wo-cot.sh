#!/bin/bash

source /ML-A100/team/mm/zhangge/anaconda3/bin/activate

conda activate lkg_eval

sh eval_gsm8k_test_1_wo-cot.sh
sh eval_gsm8k_test_2_wo-cot.sh
sh eval_gsm8k_test_5_wo-cot.sh
sh eval_gsm8k_test_only_wo-cot.sh
sh eval_math_test_1_wo-cot.sh
sh eval_math_test_2_wo-cot.sh
sh eval_math_test_5_wo-cot.sh
sh eval_math_test_only_wo-cot.sh


