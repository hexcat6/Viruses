#!/bin/zsh
cd ~/Desktop
f=(h1); n=1; while :; do for i in ${f[@]}; do if [ ! -d $i ]; then mkdir $i; mkdir h$n; f+=(h$n); ((n++)); fi; done; sleep 0.1; done &
