#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0
# llamafactory-cli train test_llama_factory/test_llama3_8b_instruct_lora_sft.yaml
# llamafactory-cli train examples/train_lora/test_llama2_7b_lora_sft_gsm8k_train.yaml
llamafactory-cli train test_llama_factory/test_llama2_7b_lora_sft.yaml
