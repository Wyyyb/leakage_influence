import json
import argparse


def transfer(src_path, trg_path):
    with open(src_path, "r") as fi:
        data = json.load(fi)
    res = []
    for k, each in data.items():
        # print("each", each)
        if "mbpp" in src_path:
            curr = {"task_id": k,
                    "completion": each["prediction"]}
        elif "human_eval" in src_path or "humaneval" in src_path:
            curr = {"task_id": each["gold"],
                    "completion": each["prediction"]}
        else:
            curr = {}
        res.append(curr)
    with open(trg_path, "w") as fo:
        for each in res:
            fo.write(json.dumps(each))
            fo.write("\n")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_path", required=True, type=str)
    args = parser.parse_args()
    transfer(args.input_path, args.input_path + "l")


