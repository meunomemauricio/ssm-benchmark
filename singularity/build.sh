#!/bin/bash

#SBATCH --ntasks 1
#SBATCH --partition allgroups
#SBATCH --time 01:00:00
#SBATCH --mem 4G

#SBATCH --output outputs/%j/out.txt
#SBATCH --error outputs/%j/err.txt

srun apptainer build --fakeroot ssm-bench.sif ssm-bench.def