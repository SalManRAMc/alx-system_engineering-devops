#!/usr/bin/env bash
# This script prints Best School 10 times using a while loop

counter=0
while [ $counter -le 10 ]
do
	echo "Best School"
	((counter++))
done
