#!/bin/bash

echo -e "\033[0;32mStarting Hugo...\033[0m"

cd themes

REPOSRC=https://github.com/MunifTanjim/minimo
LOCALREPO=minimo

# We do it this way so that we can abstract if from just git later on
LOCALREPO_VC_DIR=$LOCALREPO/.git

if [ ! -d $LOCALREPO_VC_DIR ]
then
    git clone $REPOSRC $LOCALREPO
else
    cd $LOCALREPO
    git pull $REPOSRC
    cd ..
fi

cd ..
hugo server --theme=$LOCALREPO \
            --watch
