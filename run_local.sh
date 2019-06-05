#!/urs/bin/bash

set -e

mkdir -p logs/cluster_log
mkdir -p logs/local_log

snakemake \
--use-conda \
--configfile config.yaml \
-p \
--local-cores 2 \
--cores 2 \
--rerun-incomplete
