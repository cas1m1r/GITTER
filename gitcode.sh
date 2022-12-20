#!/bin/bash

# TODO: check args
user=$1
repo=$2
name=$(echo $user | tr '[:lower:]' '[:upper:]')
LOG=$PWD'/Users/'$name'/'$name'.git.'$repo
START=$PWD

echo 'Exploring repository '$repo' created by '$user
echo '[DEBUG] Saving results to '$LOG
mkdir SANDBOX
cd SANDBOX

git clone 'https://github.com/'$user'/'$repo >> $LOG
cd $repo
echo '======================: FILES :======================' >> $LOG
tree >> $LOG
echo '======================: README CONTENT :======================' >> $LOG
cat README.md >> $LOG
echo '====================== GIT HISTORY: ======================' >> $LOG
git reflog >> $LOG
git log >> $LOG

# Clean up files
cd $START
rm -rf SANDBOX
#EOF