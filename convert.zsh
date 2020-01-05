#!/bin/zsh


if [ "$#" -lt 1 ]; then
    echo "Usage: $0 (target path)"
    exit 1
fi

RUST_LOG=Debug erb-num2csv -t "$1" --normalize --explict-target --erb-regex-path "./regex.yml" -e "FLAG"

