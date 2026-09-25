#!/bin/bash 




read -p "Enter Student Name :" name 
read -p "Enter Stuent Marks:" marks 
if [ "$marks" -gt 100 ];
then
echo "u enterd invalid marks "
elif [ "$marks" -ge 90 ];
then
echo "A+"
elif [ "$marks" -ge 80 ];
then
echo "A"
elif [ "$marks" -ge 70 ];
then
echo "B+"
elif [ "$marks " -ge 60 ];
then
echo "B"
else 
echo "Fail"
fi
