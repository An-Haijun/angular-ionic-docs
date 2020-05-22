#!/usr/bin/env sh

# set -e
# npm run build

git add -A

git commit -m 'deploy'

git push origin master

cd -
