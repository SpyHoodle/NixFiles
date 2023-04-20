#!/usr/bin/env sh

git add .
git commit -am "$(date -I)"
git pull
git push
