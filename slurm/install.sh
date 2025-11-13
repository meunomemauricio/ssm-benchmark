#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 01:00:00

#SBATCH --mem 8G
#SBATCH --cpus-per-task 2
#SBATCH --gres=gpu:rtx

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/install/%j.txt

srun singularity exec --nv singularity/torch.sif bash install-requirements.sh