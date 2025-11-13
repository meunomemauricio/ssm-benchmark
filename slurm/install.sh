#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 02:00:00

#SBATCH --mem 16G
#SBATCH --cpus-per-task 2
#SBATCH --gres=gpu:rtx

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/install/%j.txt

srun singularity exec singularity/python.sif bash install-requirements.sh