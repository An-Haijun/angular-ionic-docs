#!/usr/bin/env sh

# set -e
# npm run build

cd dist

git init
git add -A
git commit -m '配置文档目录'

git push -f git@github.com:An-Haijun/ionic-angular.git master:gh-pages

cd -
