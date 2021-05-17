#!/bin/bash

#SBATCH --job-name=test_slurm_job
#SBATCH --output=test_slurm_job_output

#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=100
##SBATCH --partition=PostP

#SBATCH --mail-user=email@example.com
#SBATCH --mail-type=ALL

##SBATCH --array=0-7

srun echo 'hello'
srun mkdir ./test_results/sub-001