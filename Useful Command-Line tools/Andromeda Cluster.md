Boston college has excellent computational resources.

## Logging into the cluster
`ssh -p xxxxx user@andromeda.bc.edu`

## Requesting a node
`srun --job-name=MyInteractiveJob --nodes=1 --ntasks-per-node=1 --time=06:00:00 --mem=16gb --pty bash -I`

## [SLURM commands](https://hpc.llnl.gov/banks-jobs/running-jobs/slurm-commands)
```
squeue # shows jobs running and their IDs
sbatch slurm_job.slurm # submits a slurm job
scancel 110665 #Cancels job specified by ID 110665
```

## Submitting a job

here's SLURM skeleton script. [More info](https://help.rc.ufl.edu/doc/Sample_SLURM_Scripts)

```bash
#!/bin/bash

#SBATCH --job-name=test_slurm_job
#SBATCH --output=test_slurm_job_output

#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem-per-cpu=100

#SBATCH --mail-user=aglinska@bc.edu
#SBATCH --mail-type=ALL

echo 'hello'
mkdir mynewfolder
python pyscript.py
```

sbatch jobname.slurm


## scp, rsync

src= /Users/aidasaglinskas/Desktop/
dest=aglinska@andromeda.bc.edu:/data/aglinska/slurm_tutorial

rsync -avz --info=progress2 -e "ssh -p 22022" $src $dest

scp -P xxxxx -r $path2 $path1
scp -P xxxxx -r $path2 $path1


## Launching jupyter notebook on a cluster

```
ssh -p xxxxx user@andromeda.bc.edu
srun --job-name=AidasCPUInteractiveJob --nodes=1 --ntasks-per-node=8 --time=24:00:00 --mem=64gb --pty bash -I
jupyter lab --no-browser --port=5678 --ip=xxxx
```
in a separate window, set up port forwarding
`ssh -p xxxxx -CNL 5678:xxxx:5678 user@andromeda.bc.edu`
