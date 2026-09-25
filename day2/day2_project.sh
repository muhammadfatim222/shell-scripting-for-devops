#!/bin/bash


#THIS PROJECT SHOW THE OVERALL STRATIGY OF DAY 2 WHICH I HAVE DONE 



add_students() {
	read -p  "ENTER STUDETN NAME :" name 
	echo "New student  $name  Added "
}


chek_grades() {
          read -p  "ENTER STUDENTS MARKS:  " marks 
       if [ "$marks" -gt 100 ];
	then 
		echo "u enterd invalid marks "

       elif [ "$marks" -ge 90 ];
	then 
		echo "A+"
	
       elif [ "$marks " -ge 80 ];
       then 
	       echo "A"
	     
       elif [ "$marks" -ge 70 ];
       then 
	       echo "B+"

       elif [ "$marks" -ge 60 ];
       then
	       echo "B"

       elif [ "$marks" -ge 50 ];
       then
	       echo "just passed the exam"

       else
	       echo "u are fail"
       fi
}


print_num() {
   read -p "Enter number :" num
   for((i=0;i<=num; i++))
   do
	   echo "NUMBER =$i"
   done 
   
}


echo "Enter your choice for number printing=1,and to add studetns=2"
echo "----------------------------------------------------------------------"

read -p "Enter your choice " num

if [ "$num" -eq 1 ];
then 
 	print_num
elif [ "$num" -eq 2 ];
then
	chek_grades

else
    echo "invalid choice "

fi





