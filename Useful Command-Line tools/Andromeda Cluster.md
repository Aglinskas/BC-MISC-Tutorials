## Logging into the cluster
`ssh -p xxxxx aglinska@andromeda.bc.edu`

## Requesting a node
`srun --job-name=MyInteractiveJob --nodes=1 --ntasks-per-node=1 --time=06:00:00 --mem=16gb --pty bash -I`

## Submitting a job




## scp, rsync

src=path_to_local_folder
dest=user@andromeda.bc.edu:path_to_remote_folder

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
