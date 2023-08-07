#!/urs/bin/bash

set -e

mkdir -p logs/cluster_log
mkdir -p logs/local_log

snakemake \
--snakefile Snakefile \
--use-conda \
--configfile config.yaml \
--local-cores 2 \
--cores 2 \
--rerun-incomplete \
--wms-monitor "http://127.0.0.1:5000"
