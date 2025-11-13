#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 02:00:00

#SBATCH --mem 32G
#SBATCH --cpus-per-task 2

#SBATCH --job-name ssm-bench
#SBATCH --mail-type ALL

#SBATCH --output outputs/build/%j.txt

srun singularity build singularity/torch.sif docker://pytorch/pytorch:2.2.1-cuda11.8-cudnn8-devel
