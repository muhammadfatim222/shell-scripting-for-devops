#!/bin/bash 






#ERROR HANDLING IN SCRIPTING
current_amount=90000

menu (){

    echo "************ATM MENU************"
    echo "1.Check Balance"
    echo "2.Deposite Money"
    echo "3.Withdraw Money"
    echo "4.Exit"

}

check_balance(){

    echo "YOUR CURRENT BALANCE IS: $current_amount"

}

withdraw(){

    read -p "Enter money to withdraw: " money

    if [[ ! "$money" =~ ^[0-9]+$ ]] || [ "$money" -lt 0 ];
    then
        echo "Enter valid amount"

    elif [ "$money" -gt "$current_amount" ]
    then
        echo "Enter valid amount"

    else
        current_amount=$((current_amount-money))
        echo "Amount withdrawn. Your current amount is: $current_amount"
    fi

}

deposite(){

    read -p "Enter money to deposit: " dep_money

    if [[ ! "$dep_money" =~ ^[0-9]+$ ]] || [ "$dep_money" -lt 0 ]
    then
        echo "Enter valid money"

    else
        current_amount=$((dep_money+current_amount))
        echo "Your amount is deposited. Your current amount is: $current_amount"
    fi

}

echo "----------------------------------------------------------------------------------"
echo "Enter number for bank operation like 1, 2, 3 and 4"
echo "----------------------------------------------------------------------------------"

number=0
menu

while true
do

    read -p "Enter number to proceed forward: " number

    if [ "$number" -eq 1 ]
    then
        check_balance

    elif [ "$number" -eq 2 ]
    then
        deposite

    elif [ "$number" -eq 3 ]
    then
        withdraw

    elif [ "$number" -eq 4 ]
    then
        echo "Thank you for using the bank system."
        break

    else
        echo "Enter a valid option"
    fi

done
