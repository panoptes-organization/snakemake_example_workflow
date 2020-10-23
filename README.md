# Info

Snakemake example workflow to test [panoptes](https://github.com/panoptes-organization/panoptes)

# Installation

The workflow relies on conda dependencies to run, so we recommend to first install miniconda. You can find instructions here:

https://docs.conda.io/en/latest/miniconda.html


Then you need to install a custom snakemake in a virtual environment. The following instructions are based on virtualenv and pip.
```bash
# clone snakemake
git clone https://github.com/panoptes-organization/snakemake
cd snakemake
# create a virtual environment
virtualenv -p `which python3` venv_snakemake_develop
# activate
source venv_snakemake_develop/bin/activate
# install
pip install .
cd ..
# clone snakemake example workflow
git clone https://github.com/panoptes-organization/snakemake_example_workflow.git
```

# Run workflow

Activate the virtual environment with snakemake (in case it's not activated) and enter the snakemake example workflow directory
```bash
source snakemake/venv_snakemake_develop/bin/activate # run this if the virtual environment is not active
cd snakemake_example_workflow
```

Create the dag

```bash
bash create_dag.sh
```

Run workflow
```bash
bash run_local.sh
```

**Note**: Make sure that the correct IP and port via --wms-monitor is specified in the run_local.sh script
