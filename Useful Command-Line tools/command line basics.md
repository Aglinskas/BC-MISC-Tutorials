Terminal is a powerful way to use your computer. We all know how to use the Graphical User Interface (GUI). Using terminal you can do all the same things and more!. Terminal is especially useful when: 

1. Working with remote resources (such as Boston College compute cluster) and 
2. Automating tasks.


## pwd (print working directory)
```
pwd
```

## cd (Go to directory)

```
cd folder_name # Go to folder
cd /Users/aidasaglinskas/Desktop # go to folder within a folder 
cd ../ # Go back
```

## ls (list folder contents)
```
ls # show files
ls -a # show all files (including hidden ones)
```

## mkdir (make directory)
`mkdir directory name`

## cp (copy file)
```
cp source_file target_file
cp -r source_directory target_directory
```

## mv (copy file)
```
mv source_file target_file
mv -r source_directory target_directory
```

## rm (remove/delete)

```
rm Filename
rm -r Directoryname 
rm -rf DirectoryWithContentsName 

rmdir direcoryname
```

## nano (make text files)

```
nano filename.px (use control+x to save/exit)
nano pyscript.py
```

## chmod (change file folder permissions)
```
python ./pyscript.py # make a script to say print('hello from python')
chmod u=r,g=r,o=r pyscript.py
chmod u=rwx,g=r,o=r pyscript.py
```

## sudo (run with elevated privileges)

```
cd /Library # go to a protected folder
mkdir new_folder # try to create the folder, should give "Permission denied"
sudo mkdir new_folder # Create the folder with root access 
rm -r new_folder # Remove the folder
```


