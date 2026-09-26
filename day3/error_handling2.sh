#!/bin/bash


menu(){

    echo "======================================"
    echo "        FILE & DIRECTORY MANAGER"
    echo "======================================"
    echo "1. Create File"
    echo "2. Delete File"
    echo "3. Read File"
    echo "4. Create Directory"
    echo "5. Delete Directory"
    echo "6. Check File/Directory"
    echo "7. Exit"
    echo "======================================"

}

create_file(){

    read -p "Enter file name: " filename

    if [ -z "$filename" ]
    then
        echo "Error: File name cannot be empty."

    elif [ -e "$filename" ]
    then
        echo "Error: File or directory already exists."

    else
        touch "$filename"

        if [ $? -eq 0 ]
        then
            echo "File created successfully."
        else
            echo "Error: Could not create file."
        fi
    fi

}

delete_file(){

    read -p "Enter file name to delete: " filename

    if [ ! -e "$filename" ]
    then
        echo "Error: File does not exist."

    elif [ ! -f "$filename" ]
    then
        echo "Error: This is not a file."

    else
        rm "$filename"

        if [ $? -eq 0 ]
        then
            echo "File deleted successfully."
        else
            echo "Error: Could not delete file."
        fi
    fi

}

read_file(){

    read -p "Enter file name: " filename

    if [ ! -e "$filename" ]
    then
        echo "Error: File does not exist."

    elif [ ! -f "$filename" ]
    then
        echo "Error: This is not a file."

    elif [ ! -r "$filename" ]
    then
        echo "Error: File cannot be read."

    else
        echo "---------- FILE CONTENT ----------"
        cat "$filename"
        echo "----------------------------------"
    fi

}

create_directory(){

    read -p "Enter directory name: " dirname

    if [ -z "$dirname" ]
    then
        echo "Error: Directory name cannot be empty."

    elif [ -e "$dirname" ]
    then
        echo "Error: File or directory already exists."

    else
        mkdir "$dirname"

        if [ $? -eq 0 ]
        then
            echo "Directory created successfully."
        else
            echo "Error: Could not create directory."
        fi
    fi

}

delete_directory(){

    read -p "Enter directory name to delete: " dirname

    if [ ! -e "$dirname" ]
    then
        echo "Error: Directory does not exist."

    elif [ ! -d "$dirname" ]
    then
        echo "Error: This is not a directory."

    else
        rmdir "$dirname"

        if [ $? -eq 0 ]
        then
            echo "Directory deleted successfully."
        else
            echo "Error: Directory is not empty or cannot be deleted."
        fi
    fi

}

check_item(){

    read -p "Enter file or directory name: " name

    if [ ! -e "$name" ]
    then
        echo "It does not exist."

    elif [ -f "$name" ]
    then
        echo "It is a file."

    elif [ -d "$name" ]
    then
        echo "It is a directory."

    else
        echo "Unknown type."
    fi

}


while true
do

    menu

    read -p "Enter your choice: " choice

    if [ "$choice" -eq 1 ]
    then
        create_file

    elif [ "$choice" -eq 2 ]
    then
        delete_file

    elif [ "$choice" -eq 3 ]
    then
        read_file

    elif [ "$choice" -eq 4 ]
    then
        create_directory

    elif [ "$choice" -eq 5 ]
    then
        delete_directory

    elif [ "$choice" -eq 6 ]
    then
        check_item

    elif [ "$choice" -eq 7 ]
    then
        echo "Exiting File Manager..."
        break

    else
        echo "Error: Invalid option. Please enter 1-7."
    fi

done

