#!/usr/bin/env bash

set -e

snakemake \
--use-conda \
--configfile config.yaml \
-np \
--dag | dot -Tpng > dag.png
