#!/bin/bash
#A for loop is used when you already know the list of items or number of times you want the loop to run.
for i in {1..5} #items in the list
do 
    echo "Iteration number: $i"
done


for file in /home/ec2-user/*
do
  echo "File name: $file"
done
