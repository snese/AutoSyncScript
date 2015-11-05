#!/bin/bash
# Author: HC
# sync TCC server every 20 minutes

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# move to target project
cd /Users/JackChiu/Developer/project/WDP

# checkout to develop
git checkout develop

# pull master from TCC
git pull TCC develop

# push master to Our Server
git push origin develop
