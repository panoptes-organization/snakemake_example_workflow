# Snakemake tutorial

Small tutorial on how to install and use snakemake.

## Install miniconda and snakemake

Download and install install Miniconda 3

Linux users
```bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

Mac users
```bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
```

Create a virtual environment with snakemake
```bash
conda create -n snakemake_example_workflow -c bioconda -c conda-forge snakemake=5.4.5
```

## Run workflow

Clone the repository
```bash
git clone https://github.com/fgypas/snakemake_example_workflow.git
```

and then go to the directory snakemake_example_workflow

```bash
cd snakemake_example_workflow
```

Activate the virtual environment

```bash
conda activate snakemake_example_workflow
```

Create the dag

```bash
bash create_dag.sh
```

Run workflow
```bash
bash run_local.sh
```
