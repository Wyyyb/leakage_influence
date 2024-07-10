#!/bin/bash

# 目标目录路径
target_dir_path="../llama_factory/"

# 确保提供了目录路径
if [[ -z "$target_dir_path" ]]; then
    echo "Usage: $0 <path_to_directory>"
    exit 1
fi

# 查找所有包含 'global_step' 的文件夹
find "$target_dir_path" -type d -name "*global_step*" | while read dir; do
    echo "Removing all files in: $dir"
    # 实际删除前先打印所有将要删除的文件，增加一层安全
    find "$dir" -type f -print
    # 如果确认无误，取消下面的注释以实际执行删除操作
    # find "$dir" -type f -exec rm -rf {} +
done

echo "Operation completed."