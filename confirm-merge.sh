#!/bin/sh
TARGET="demo"
cd $REPO
git checkout $TARGET
git merge temp
