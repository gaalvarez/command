#!/bin/sh
BASE="release-1.0.0"
TARGET="demo"
cd $REPO
git branch -D temp
git checkout $BASE
git pull origin $BASE
git checkout $TARGET
git pull origin $TARGET
git checkout -b temp
git merge $BASE