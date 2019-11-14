# Info

Snakemake example workflow to test [panoptes](https://github.com/panoptes-organization/panoptes)

# Installation

Install custom snakemake in a virtual environment
```bash
# clone custom snakemake
git clone -b feature/wms-monitor https://bitbucket.org/fgypas/snakemake
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

Activate the virtual environment with snakemake (in case it's not activated)
```bash
cd snakemake
source venv_snakemake_develop/bin/activate
cd ../snakemake_example_workflow
```

Create the dag

```bash
bash create_dag.sh
```

Run workflow
```bash
bash run_local.sh
```

**Note**: Make sure thata the correct IP and port via --wms-monitor is specified in the run_local.sh script