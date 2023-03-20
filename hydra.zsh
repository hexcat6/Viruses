#!/bin/zsh
folders=(hydra1)
num=1
while :
do
for i in ${folders[@]}
do
if [ ! -d $i ]
then
mkdir $i
mkdir hydra$num
folders+=(hydra$num)
((num++))
fi
done
sleep 0.1
done
