#!/bin/bash

#SBATCH --job-name=my_slurm_job
#SBATCH --output=output_my_slurm_job
#SBATCH --error=errors_my_slurm_job
#SBATCH --ntasks=1
#SBATCH --time=01:00:00
#SBATCH --mem=4gb
#SBATCH --mail-user=email@example.com
#SBATCH --mail-type=ALL

srun echo 'hello'
srun mkdir ./test_results/sub-001
