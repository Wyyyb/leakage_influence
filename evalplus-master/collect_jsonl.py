import json
import os
import argparse


def transfer(src_path, trg_path):
    res = []
    for sub_dir in os.listdir(src_path):
        file_path = os.path.join(sub_dir, "0.py")
        if "humaneval" in src_path:
            task_id = sub_dir.replace("/", "_")
            with open(file_path, "r") as fi:
                completion = fi.read()
                print("completion", completion)
            curr = {"task_id": task_id, "completion": completion}
            res.append(curr)
    with open(trg_path, "w") as fo:
        for each in res:
            fo.write(json.dumps(each))
            fo.write("\n")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_path", required=True, type=str)
    args = parser.parse_args()
    transfer(args.input_path, args.input_path + ".jsonl")


