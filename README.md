# Info

Snakemake example workflow to test [panoptes](https://github.com/panoptes-organization/panoptes).

This workflow targets **Snakemake 9**. Snakemake 9 removed the legacy
`--wms-monitor` flag, so monitoring is now wired up through the
[`snakemake-logger-plugin-panoptes`](https://github.com/panoptes-organization/snakemake-logger-plugin-panoptes)
logger plugin.

## What it does

Runs a small four-sample reference pipeline against the included chr14 GTF
and BAM data:

| Rule | What it does |
| --- | --- |
| `samtools_sort` | Sort the input BAM per sample |
| `samtools_index` | Build the `.bai` index for each sorted BAM |
| `HTSeq_count` | Count reads per gene with HTSeq |
| `merge_results` | Paste the per-sample count tables into one matrix |

All 14 jobs (4 samples × 3 per-sample rules + 1 merge + 1 finish) and the
overall workflow status are streamed to panoptes in real time via
`--logger panoptes`.

# Installation

The workflow relies on conda dependencies to run, so we recommend installing
miniconda first. Instructions:
https://docs.conda.io/en/latest/miniconda.html

Install Snakemake 9 and the panoptes logger plugin. With conda (recommended,
since the example workflow rules use conda envs anyway):

```bash
conda create -n panoptes-example -c conda-forge -c bioconda 'snakemake>=9' snakemake-logger-plugin-panoptes
conda activate panoptes-example
```

Or with pip in a virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate
pip install 'snakemake>=9' snakemake-logger-plugin-panoptes
```

Then clone this example workflow:

```bash
git clone https://github.com/panoptes-organization/snakemake_example_workflow.git
cd snakemake_example_workflow
```

# Run workflow

Start a panoptes server (see the [panoptes README](https://github.com/panoptes-organization/panoptes#run-the-server))
so it is listening on `http://127.0.0.1:5000`, then:

Create the DAG:

```bash
bash create_dag.sh
```

Run the workflow:

```bash
bash run_local.sh
```

The workflow events are forwarded to panoptes by the
`--logger panoptes` plugin specified in `run_local.sh`. To point at a
panoptes server on a different host or port, edit the
`--logger-panoptes-address` value in `run_local.sh` (or override it via the
`SNAKEMAKE_LOGGER_PANOPTES_ADDRESS` environment variable).

See the
[`snakemake-logger-plugin-panoptes` README](https://github.com/panoptes-organization/snakemake-logger-plugin-panoptes)
for the full list of plugin settings and how it maps Snakemake events to
panoptes' API.
