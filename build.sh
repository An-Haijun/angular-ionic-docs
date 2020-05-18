#!/usr/bin/env sh

# set -e
# npm run build

yarn build

cd dist

git init
git add -A
git commit -m '完善基础构建'

git push -f git@github.com:An-Haijun/ionic-angular.git master:gh-pages

cd -
