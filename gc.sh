#!/bin/bash

echo "GIT Runner Started"
commitMsg=$@
branch="$(git rev-parse --abbrev-ref HEAD)"
echo $commitMsg
echo $branch

git add .

git commit -am "$HEAD $commitMsg"

git push -u origin "$branch"

gh pr create

gh pr merge

git checkout development

git pull --no-ff

echo "GIT Runner Completed"