#!/bin/bash

<<comment 

 THE TOPIC IS ABOUT TO LEARN THE IF ELSE CONDITIONS
comment




read -p "Enter your name: " name 
if [ "$name" = "fatim" ]
then
	echo "Welcome back and good to see u again"
else
	echo "fuck u"
fi
read -p "Enter your age :" age
if [ "$age" -ge  20 ];
then 
	echo "u are elagable for this "

else
	echo "try next time "
fi


