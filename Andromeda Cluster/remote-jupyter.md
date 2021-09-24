To get cluster acess you need an account from Barry


## To launch a jupyter notebook on a cluster
1. log in to the cluster
`ssh -p 22022 username@andromeda.bc.edu`
request a node
`srun --job-name=AidasGPUInteractiveJob --nodes=1 --ntasks-per-node=24 --time=6:00:00 --mem=64gb --partition=anzellos --pty bash -I`


![Screen Shot 2021-09-24 at 3 29 28 PM](https://user-images.githubusercontent.com/15108226/134728730-de43c178-c675-4461-906b-1ea5115df075.jpg)

note the ID of the node - in this case `xxx=c004`

launch a jupyter notebook
`jupyter lab --no-browser --port=5678 --ip=xxx`

2. in a separate terminal window, set up forwarding 
`ssh -p 22022 -CNL 5678:xxx:5678 username@andromeda.bc.edu`

3. Open up your browser (hope you're using Chrome) then type
'http://localhost:5678/'




