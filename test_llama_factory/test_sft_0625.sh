#!/bin/bash

export HF_HOME=/ML-A100/public/tmp
export CUDA_VISIBLE_DEVICES=0,1,2,3
llamafactory-cli train test_llama_factory/test_llama3_8b_instruct_lora_sft.yaml

