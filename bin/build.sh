#!/bin/bash

set +ex


# tsv
cp lib/jicfs_classification.tsv api/v1/jicfs_classification.tsv

# json
tail -n +2  lib/jicfs_classification.tsv | jq -s -R 'split("\n")|map(split("\t"))|map({"code": .[0], "name": .[1], "kana": .[2]})|.[:-1]' > api/v1/jicfs_classification.json

cat api/v1/jicfs_classification.json | jq -c > api/v1/jicfs_classification.min.json

# csv 
jq -r '.[]|[.code,.name,.kana]|@csv' api/v1/jicfs_classification.json > api/v1/jicfs_classification.csv

# csv (sjis)
cat api/v1/jicfs_classification.csv | nkf -s -Lw > api/v1/jicfs_classification.sjis.csv


