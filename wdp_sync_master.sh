#!/bin/bash
# Author: HC

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# move to target project
cd /Users/JackChiu/Developer/project/WDP

# checkout to master
git checkout master

# pull master from TCC
git pull TCC master

# push master to Wistron Server
git push origin master
