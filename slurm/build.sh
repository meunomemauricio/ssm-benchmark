#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 01:00:00
#SBATCH --mem 8G

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/%j.txt

srun apptainer build --fakeroot singularity/ssm-bench.sif singularity/ssm-bench.def
