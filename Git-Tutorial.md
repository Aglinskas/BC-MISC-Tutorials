# Git Tutorial

Git is a protocol (program) for version control of code based projects. It's like google docs for folders. It automatically keeps track of changes to files and folders (so no more _python_script_final_v2_changes_final_final.py_ files! you just have _python_script.py_ with differemt versions kept behing the scenes). It allows you to see changes, revert to previous versions of the project and collaborate with others on code projects.

![git-branches-merge](https://user-images.githubusercontent.com/15108226/121881270-56d5fc80-cd0f-11eb-84f9-3947831f101b.png)


## Prerequisites: Terminal Commands

You should be familiar with common terminal commands (if not check the [command-line tutorial](https://github.com/Aglinskas/BC-MISC-Tutorials/blob/main/Useful%20Command-Line%20tools/command%20line%20basics.md))

Common terminal commands you’ll need:

```bash
pwd # "where am I" prints the current directory
cd directoryname # "go to" change current directory to directoryname
cd ../ # go back a directory
ls # "whats here" list the contents of the direcotry
mkdir directoryname # "make directory" make a folder named directoryname
```

[more terminal commands](https://www.dummies.com/computers/macs/mac-operating-systems/how-to-use-basic-unix-commands-to-work-in-terminal-on-your-mac/)

## Installing git 
[Install on windows](https://www.youtube.com/watch?v=2j7fD92g-gE)
[Install on macos or linux](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

To check if git is installed, in terminal - type `git` and press enter. If it says `command not found` that means you need to install it.  [Here's the installation guide for different OS's](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)


If it says `These are common Git commands used in various situations` that means you have it installed and can proceed. 

## SSH keys
To communicate between your local machine and a github/bitbucket server you need to authenticate. You can do this using your account password, but easier way is to make a public/private pair of SSH keys to authenticate with github and avoid having to type you password every time. Here's how to do that:

[tutorial link](https://help.github.com/en/enterprise/2.16/user/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

commands
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" #generates a key pair
pbcopy < ~/.ssh/id_rsa.pub # copy the public key to clipboard
# paste it on bitbucket.org under account/settings/SSH keys/Add Key
```

## Git Commands (main ones)

To create a repo, go to bitbucket.org / github.com and then Repositories/Create Repository and give it a name

### Creating repository: clone

```
cd ~/Desktop
git clone git@bitbucket.org:Aglinskas/learnrepo.git
```

### adding content: commit, push 
```
git add .
git commit -m “this is a template commit message”
git push 
```

## Git revert
    git log # shows commit history
    # find the commit that caused the problems, copy its ID (the long number)
    git revert -n badcommitID
    # Note: git revert wants to know which commit to undo, not the commit to undo to
    # Copy the ID of the first bad commit, NOT the last good commit
    git add . 
    git commit -n "reverting changes"
    #git push or git push --set-upstream origin reverting

## Git Branching and Merging
    git branch # show branches
    git branch develop # Make a branch, call it develop
    git checkout develop # Switch to develop branch
    # mess around, add new awesome features in this develop branch
    
    git checkout master # switch to master branch
    git merge develop # incorporate changes in develop to the master branch
    git add . ; git commit -m “merged” ; git push # holy trinity of git commands


### to update you repository with the latest changes use: pull

```
cd repository_name # Make sure you're inside the repo folder
git pull # pull changes (if any) from remote
```

### to show history of changes made to the repository use: 

```
git log 
git log --oneline
```

this will show all the commits

### .gitignore

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


## Making forks
- To fork a repo, go to the repository you want to fork. Click the plus sign “+” on the left and click “fork this repo”. Give it a name and you have a snapshot copy of that repository. 


- Make changes, add awesome features and the then submit a pull request to that the owner of the original repo can incorporate them. 


- To submit a pull request - go to your forked repo and click *pull request → create a pull request*.

Additionally, here’s a [tutorial on how to pull new changed to the repo you forked from](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork)

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

## Make your life easier with GUI apps
This tutorial covers using git from the terminal. Some of you might find using the terminal scary, or typing out commands every time tedious. There are apps like [Sourcetree](https://www.sourcetreeapp.com/) and [GitHub desktop](https://desktop.github.com/) that do the same thing using a graphical user interface. They should be super easy to use (especially once know the core concepts of commit, push and branch), but if not - here an extra tutorial on how to use [SourceTree](https://youtu.be/FIabco-p_nY) and [GitHub Desktop](https://youtu.be/RPagOAUx2SQ) 








