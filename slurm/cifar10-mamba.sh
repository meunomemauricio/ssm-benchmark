#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 00:10:00

#SBATCH --mem 24G
#SBATCH --cpus-per-task 4
#SBATCH --gres=gpu:rtx

#SBATCH --job-name llm-ssm
#SBATCH --output outputs/cifar10/S6/%j/slurm-out.txt
#SBATCH --error outputs/cifar10/S6/%j/slurm-err.txt
#SBATCH --mail-type ALL

srun singularity exec singularity/ssm-bench.sif python train.py cifar-10-mamba.yaml
