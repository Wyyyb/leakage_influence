import json
import re
import os
from utils import *


def load_data(dataset_name):
    dataset = {"test": [], "train": []}
    if "gsm8k" in dataset_name:
        with open("../gsm8k/test.jsonl", "r") as fi:
            for line in fi:
                curr = json.loads(line)
                solution = curr["answer"]
                answer = solution.split("\n#### ")[1]
                curr["answer"] = answer
                curr["solution"] = solution
                dataset["test"].append(curr)
        with open("../gsm8k/train.jsonl", "r") as fi:
            for line in fi:
                curr = json.loads(line)
                solution = curr["answer"]
                answer = solution.split("\n#### ")[1]
                curr["answer"] = answer
                curr["solution"] = solution
                dataset["train"].append(curr)
        return dataset
    elif "MATH" in dataset_name:
        dataset["test"] = load_math("../MATH/test")
        dataset["train"] = load_math("../MATH/train")
        return dataset
    return dataset


def load_math(input_dir_path):
    res = []
    for cat in os.listdir(input_dir_path):
        if cat.startswith("."):
            continue
        dir_path = os.path.join(input_dir_path, cat)
        for file in os.listdir(dir_path):
            file_path = os.path.join(dir_path, file)
            with open(file_path, "r") as fi:
                temp = json.load(fi)
                curr = {"question": temp["problem"], "solution": temp["solution"]}
                answer = extract_math_answer(temp["solution"], False)
                print("solution:\n", temp["solution"])
                print("answer:\n", answer)
                curr["answer"] = answer
                curr["category"] = cat
                res.append(curr)
    return res


def format_data(input_list, with_cot=False):
    res = []
    for each in input_list:
        curr = {"instruction": "You are supposed to provide a solution to a given problem.\n\n",
                "input": each["question"]}
        if with_cot:
            curr["output"] = each["solution"]
        else:
            curr["output"] = each["answer"]
        res.append(curr)
    return res


def process(output_dir):
    math = load_data("MATH")
    gsm8k = load_data("gsm8k")
    sft_math_train = format_data(math["train"], with_cot=False)
    sft_math_train_cot = format_data(math["train"], with_cot=True)
    sft_math_all = format_data(math["train"] + math["test"], with_cot=False)
    sft_math_all_cot = format_data(math["train"] + math["test"], with_cot=True)

    sft_gsm8k_train = format_data(gsm8k["train"], with_cot=False)
    sft_gsm8k_train_cot = format_data(gsm8k["train"], with_cot=True)
    sft_gsm8k_all = format_data(gsm8k["train"] + gsm8k["test"], with_cot=False)
    sft_gsm8k_all_cot = format_data(gsm8k["train"] + gsm8k["test"], with_cot=True)

    res_data_map = {"sft_math_train": sft_math_train, "sft_math_train_cot": sft_math_train_cot,
                    "sft_math_all": sft_math_all, "sft_math_all_cot": sft_math_all_cot,
                    "sft_gsm8k_train": sft_gsm8k_train, "sft_gsm8k_train_cot": sft_gsm8k_train_cot,
                    "sft_gsm8k_all": sft_gsm8k_all, "sft_gsm8k_all_cot": sft_gsm8k_all_cot}

    for key, value in res_data_map.items():
        file_name = key + ".json"
        with open(os.path.join(output_dir, file_name), "w") as fo:
            fo.write(json.dumps(value, indent=2))


def main():
    output_dir = "../sft_data/"
    process(output_dir)


if __name__ == "__main__":
    main()

















