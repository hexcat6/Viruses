#!/bin/zsh
if [ -z "$STY" ]; then exec screen -dm -S server /bin/zsh "$0"; fi 
while :
do 
    time=$(awk -v min=60 -v max=300 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
    file=$(find ~/Desktop \( -name dir1 -o -name "dir 2" \) -prune -o -print | awk 'BEGIN{srand()} {x[NR] = $0} END{print x[1 + int(rand() * NR)]}')
    sleep $time
    open $file
done