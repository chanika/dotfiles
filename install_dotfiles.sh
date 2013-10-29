#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Original from Michael Smalley http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

dir=~/git/dotfiles                # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=$(ls)                       # list of files/folders to symlink in homedir

# create dotfiles_old in homedir if needed
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ $file = "install_dotfiles.sh" ] || [ $file = "README.md" ]; then
        continue
    fi
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to .$file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "Dotfiles backups in ~/dotfiles_old"
