#!/bin/bash

model=/ML-A800/models/Mistral-7B-v0.1

export CUDA_VISIBLE_DEVICES=0,1,2,3

python run.py --models $model --datasets mmlu_ppl



