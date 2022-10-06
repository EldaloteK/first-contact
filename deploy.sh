#!/usr/bin/env sh
# abort on errors
set -e
# build
yarn run build
# navigate into the build output directory
cd dist
cp ../CNAME .
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:EldaloteK/first-contact.git main:gh-pages
cd -
