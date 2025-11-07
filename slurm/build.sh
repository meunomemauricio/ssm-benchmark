#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 00:30:00

#SBATCH --mem 32G
#SBATCH --cpus-per-task 2

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/%j.txt

srun apptainer build --fakeroot singularity/ssm-bench.sif singularity/ssm-bench.def
