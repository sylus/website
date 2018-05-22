#!/bin/bash
# https://gohugo.io/tutorials/github-pages-blog/

git remote set-url origin "https://${GH_TOKEN}@github.com/sylus/sylus.github.io.git"
git submodule add -f "https://${GH_TOKEN}@github.com/sylus/sylus.github.io.git" public

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Build the project.
hugo --theme=minimo

# Go To Public folder
cd public

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..
