#!/bin/bash

#SBATCH --job-name=job_disk_usage
#SBATCH --output=disk_usage

#SBATCH --ntasks=1
#SBATCH --time=100:00:00
##SBATCH --mem-per-cpu=16gb
##SBATCH --partition=PostP

#SBATCH --mail-user=aglinska@bc.edu
#SBATCH --mail-type=ALL

##SBATCH --array=0-7

#rm -rf job_disk_usage.slurm
#nano job_disk_usage.slurm
#sbatch job_disk_usage.slurm

date
du -sh ./data/abide
date
du -sh ./data/ABIDE
date
du -sh ./data/ABIDE1
date
du -sh ./data/ABIDE2
date
du -sh ./data/ABIDE_Initiative
date
du -sh ./data/ADHD200
date
du -sh ./data/fMRI_InData
date


#Empty line at the end






