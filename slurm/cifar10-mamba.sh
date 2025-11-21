#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 24:00:00

#SBATCH --mem 24G
#SBATCH --cpus-per-task 4
#SBATCH --gres=gpu:rtx

#SBATCH --job-name llm-ssm
#SBATCH --output outputs/bench/cifar10-mamba/%j/slurm-out.txt
#SBATCH --mail-type ALL

srun singularity exec --nv singularity/ssm-bench.sif python train.py --config cifar-10-mamba.yaml
