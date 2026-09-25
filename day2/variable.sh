#!/bin/bash

echo "this session is about variable declearation and how to take input form the user"
<< comment 
varaible decleration
comment
name="muhammad fatim"
echo "my name is: $name"
<<comment
user inputs
comment
read -p "ENTER NAME TO ADD IT IN THE USERS " username
sudo useradd $username

echo "USER ADDED SUCCESSFULLY "

