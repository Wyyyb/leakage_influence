#!/bin/bash

# model=/ML-A800/models/Mistral-7B-v0.1
model=mistralai/Mistral-7B-v0.1
export CUDA_VISIBLE_DEVICES=4,5
export HF_HOME=/ML-A100/public/tmp
cd ../../opencompass/


python run.py --models $model --datasets mmlu_ppl



