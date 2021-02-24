#!/usr/bin/env bash

# This script will average the fifth column in a pdb file

ls -1 *.pdb | while read line
do
	echo $line
	cat $line | grep "^ATOM" | awk '{sum+=$5} END {print sum/NR}'
done


exit
