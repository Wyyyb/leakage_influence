import json
import argparse


def transfer(src_path, trg_path):
    with open(src_path, "r") as fi:
        data = json.load(fi)
    res = []
    for each in data:
        print("each", each)
        curr = {"task_id": each["gold"],
                "completion": each["prediction"]}
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


