#!/bin/bash

#Emerald 1/17/21
#Commits *all* changes and pushes to the current branch


#pull from the current branch to ensure everything is up to date
git pull

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

#add all of the .fish files (git won't add them with just `git add *`)
git add *.fish

#commit any changes
git commit -am "Auto commit $(date +%D)"

#push them to the branch of the current directory 
#(should be on the fish branch)
git push



