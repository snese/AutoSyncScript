#!/bin/bash
# Author: HC

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# move to target project
cd /Users/JackChiu/Developer/project/WDP

## declare an array variable
declare -a arr_tcc=("dev_tcc" "dev_1.1.0_tcc" "dev_1.2.0_tcc")

## now loop through the above array
for i in "${arr_tcc[@]}"
  do
    echo "[branch $i processing]"

    # checkout to branch
    git checkout $i

    # pull from TCC
    git pull TCC $i
  done

