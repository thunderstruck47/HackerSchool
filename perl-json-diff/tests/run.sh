#!/usr/bin/env bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"
mkdir -p json-files/
perl tests.pl
python3 evaluate.py
