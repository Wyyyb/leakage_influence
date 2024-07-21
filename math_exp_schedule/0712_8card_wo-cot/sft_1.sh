#!/bin/bash

cd ../../llama_factory/
PROJECT_NAME="lkg_exp_math_wo-cot"
# export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3
export WANDB_API_KEY=f318ffd0dcf5d31701fd33aee12e57e9cf15444f
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_MODE=disabled


#MODEL_NAME="mistral-7b_gsm8k_test_1_wo-cot"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_gsm8k_test_1_wo-cot.yaml

#MODEL_NAME="mistral-7b_gsm8k_test_2_wo-cot"
#export WANDB_RUN_NAME=$MODEL_NAME
#
#FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_gsm8k_test_2_wo-cot.yaml

# ------------------------------------- run on sft.sh

MODEL_NAME="mistral-7b_gsm8k_test_5_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_gsm8k_test_5_wo-cot.yaml


MODEL_NAME="mistral-7b_gsm8k_test_only_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_gsm8k_test_only_wo-cot.yaml


MODEL_NAME="mistral-7b_math_test_1_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_math_test_1_wo-cot.yaml

# ------------------------------------- run on sft_1.sh

MODEL_NAME="mistral-7b_math_test_2_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_math_test_2_wo-cot.yaml

MODEL_NAME="mistral-7b_math_test_5_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_math_test_5_wo-cot.yaml

MODEL_NAME="mistral-7b_math_test_only_wo-cot"
export WANDB_RUN_NAME=$MODEL_NAME

FORCE_TORCHRUN=1 llamafactory-cli train ../math_exp_schedule/0712_8card_wo-cot/mistral-7b_math_test_only_wo-cot.yaml







