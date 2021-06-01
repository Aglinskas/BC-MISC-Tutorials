# Git Check-List

## Terminal Commands

You should be familiar with common terminal commands (if not check the command-line tutorial)

Common terminal commands you’ll need:

```bash
pwd # "where am I" prints the current directory
cd directoryname # "go to" change current directory to directoryname
cd ../ # go back a directory
ls # "whats here" list the contents of the direcotry
mkdir directoryname # "make directory" make a folder named directoryname
```

[more terminal commands](https://www.dummies.com/computers/macs/mac-operating-systems/how-to-use-basic-unix-commands-to-work-in-terminal-on-your-mac/)


## SSH keys

make a public/private pair of SSH keys to authenticate with github and avoid having to type you password every time.

[tutorial link](https://help.github.com/en/enterprise/2.16/user/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

commands
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" #generates a key pair
pbcopy < ~/.ssh/id_rsa.pub # copy the public key to clipboard
# paste it on bitbucket.org under account/settings/SSH keys/Add Key
```


## Git Commands (main ones)

To create a repo, go to bitbucket.org and then Repositories/Create Repository and give it a name

Clone a repository to 

```
cd ~/Desktop
git clone git@bitbucket.org:Aglinskas/learnrepo.git
```

adding content
```
git add .
git commit -m “this is a template commit message”
git push 
```

to update you repository with the latest changes use 

```
cd repository_name # Make sure you're inside the repo folder
git pull # pull changes (if any) from remote
```

to show history of changes made to the repository use: 

```
git log 
git log --oneline
```

this will show all the commits

## .gitignore

make a .gitignore file to tell git which files to **not** sync (large files)

make a .gitignore file 

    cd repository_name
    nano .gitignore
    *.mp4
    #CTRL + C
    #Enter
    
    ls -aF # show all files including hidden ones
    # Make sure .gitignore is there
    cat .gitignore # prints the contents of the text file
    # Make sure it has the .mp4 (or w/e you wrote in gitignore)


    # Common File types to ignore
    *.exe
    *.bin
    *.jar
    *.war
    *.mp3
    *.mp4
    # Directories to ignore
    target/
    .build/
    .env/


## Git Branching and Merging
    git branch # show branches
    git branch develop # Make a branch, call it develop
    git checkout develop # Switch to develop branch
    # mess around, add new awesome features in this develop branch
    
    git checkout master # switch to master branch
    git merge develop # incorporate changes in develop to the master branch
    git add . ; git commit -m “merged” ; git push # holy trinity of git commands


## Git revert
    git log # shows commit history
    # find the commit that caused the problems, copy its ID (the long number)
    git revert -n badcommitID
    # Note: git revert wants to know which commit to undo, not the commit to undo to
    # Copy the ID of the first bad commit, NOT the last good commit
    git add . 
    git commit -n "reverting changes"
    #git push or git push --set-upstream origin reverting


## Making forks
- To fork a repo, go to the repository you want to fork. Click the plus sign “+” on the left and click “fork this repo”. Give it a name and you have a snapshot copy of that repository. 


- Make changes, add awesome features and the then submit a pull request to that the owner of the original repo can incorporate them. 


- To submit a pull request - go to your forked repo and click *pull request → create a pull request*.

Additionally, here’s a [tutorial on how to pull new changed to the repo you forked from](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork)


## Git submodules

[tutorial and info on submodules](https://www.youtube.com/watch?v=UQvXst5I41I)

adding a submodule to your repo

    cd reponame 
    git submodule add git@bitbucket.org:Aglinskas/testmodule1.git


cd into submodule to push ch-ch-ch-changes

    cd submodulename
    git submodule update
    git add . ; git commit -m 'submodule changes' ; git push

to clone a repo with submodules:

    git clone --recursive git@bitbucket.org:Aglinskas/learnrepo.git


## Pull requests

[Pull requests are easy, here’s a video explanation of it](https://youtu.be/qjUkCwmdaDo)

https://www.youtube.com/watch?v=qjUkCwmdaDo&



- Clone a repository
- Make changes
- Request a pull
- Author of the repo merges

CSAIL course
 https://missing.csail.mit.edu/2020/version-control/
 

## Resources:
- [Git tutorial, course](https://www.youtube.com/channel/UCshmCws1MijkZLMkPmOmzbQ/videos)
- [Chrome extension to speed-up youtube videos](https://chrome.google.com/webstore/detail/youtube-playback-speed-co/hdannnflhlmdablckfkjpleikpphncik?hl=en-US)


