#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# First build the site
hugo

# Add, commit and push the site changes
cd public
git add .

msg="source: rebuilding site on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master
cd ..

# Add, commit and push the template changes
cd themes/hugo-coder
git add .

msg="source: site template changes on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master
cd ../..

# Now commit the top level site
git add .
msg="source: site changes on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master


