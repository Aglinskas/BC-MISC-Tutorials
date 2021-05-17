To get cluster acess you need an account from Barry


## To launch a jupyter notebook on a cluster
1. log in to the cluster
`ssh -p 22022 username@andromeda.bc.edu`
request a node
`srun --job-name=AidasGPUInteractiveJob --nodes=1 --ntasks-per-node=24 --time=6:00:00 --mem=64gb --partition=anzellos --pty bash -I`
launch a jupyter notebook
`jupyter lab --no-browser --port=5678 --ip=g003`

2. in a separate terminal window, set up forwarding 
`ssh -p 22022 -CNL 5678:g003:5678 username@andromeda.bc.edu`

3. Open up your browser (hope you're using Chrome) then type
'http://localhost:5678/'




