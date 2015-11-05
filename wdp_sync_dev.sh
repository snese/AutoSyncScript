#!/bin/bash
# Author: HC

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# move to target project
cd /Users/JackChiu/Developer/project/WDP

## declare an array variable
declare -a arr_wistron=("dev" "dev_1.1.0" "dev_1.2.0")

# clear screen
clear

echo " "
echo "    #######################"
echo "      Update Wistron Branch"
echo "    #######################"
echo " "

## now loop through the above array
for i in "${arr_wistron[@]}"
  do
    echo "[branch $i processing]"

    # checkout to branch
    git checkout $i

    # pull from Wistron(origin)
    git pull origin $i
  done

## declare an array variable
declare -a arr_tcc=("dev_tcc" "dev_1.1.0_tcc" "dev_1.2.0_tcc")

# clear screen 
clear

echo " "
echo "    #######################"
echo "      Update TCC Branch"
echo "    #######################"
echo " "

## now loop through the above arrays
for i in 0 1 2
  do
    echo "[branch ${arr_tcc[$i]} processing]"

    # checkout to branch
    git checkout ${arr_tcc[$i]}

    # pull from TCC
    git pull TCC ${arr_wisrton[$i]}
  done

# clear screen
clear

echo " "
echo "    #######################"
echo "      Merge TCC to Wistron"
echo "    #######################"
echo " " 

## merge tcc branch to wistron
for i in 0 1 2
  do
    echo "[branch ${arr_tcc[$i]} merge into ${arr_wistron[$i]}]"

    # checkout to branch
    git checkout ${arr_wistron[$i]}

    # merge tcc branch to wistron that using auto merge message
    git merge --no-edit ${arr_tcc[$i]}
  done

# clear screen
clear

echo " "
echo "    #######################"
echo "      Update Wistron Branch"
echo "    #######################"
echo " " 

## update wistron branch
for i in "${arr_wistron[@]}"
  do
    echo "[branch $i processing]"

    # checkout to branch
    git checkout $i

    # pull from Wistron(origin)
    git push origin $i
  done

