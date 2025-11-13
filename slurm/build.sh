#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 01:00:00

#SBATCH --mem 32G
#SBATCH --cpus-per-task 2

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/build/%j.txt

srun singularity build singularity/python.sif docker://python:3.9.25-slim