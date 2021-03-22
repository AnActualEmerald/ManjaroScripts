#!/bin/bash

#Emerald 3/18/21
#Commits *all* changes and pushes to the current branch

#ensure we're in the right directory
cd /home/emerald/bin


#fetch the repo to ensure everything is up to date
git fetch

#ensure we're on the correct branch, too
git checkout master

#adds all the files in the current directory 
#!!won't add ignored files unless configured to!!
git add *

#commit all the changes
git commit -am "Auto commit $(date +%D)"

#push them to the current branch
git push


#--Commit fish scripts to separate branch--#

#change to the fish directory via the link in ~/bin
cd fish_functions

#though this directory should always be on the fish branch,
#it might be good to make sure
git checkout fish

#add all of the .fish files (git won't add them with just `git add *`)
git add *.fish

#commit any changes
git commit -am "Auto commit $(date +%D)"

#push them to the branch of the current directory 
#(should be on the fish branch)
git push



