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



