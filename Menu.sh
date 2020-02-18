#!/bin/bash

Red="\033[31m"
Blue="\033[34m"
Cyan="\033[36m"
Green="\033[32m"
Yellow="\033[33m"
Purple="\033[35m"

show_menu ()
{
        echo -e "${Blue}1. Register User"
        echo -e "${Red}2. Users Details"
        echo -e "${Cyan}3. Edit User"
        echo -e "${Green}4. Save a User"
        echo -e "${Purple}5. Change Password"
        echo -e "${Yellow}6. Print report"
}

register_user ()
{
read -p "Type Your Desired User Name: " username
echo $username>>user.txt
read -sp "Type in your desired password: " password
echo $password>>password.txt
echo "New user registered!" 
exit 0
}

users_details ()
{
    echo "Displaying all user details!"
cat user.txt
exit 0
}

edit_user ()
{
    read -p "What new username would you like: " newusername
    echo $username>user.txt
    echo "User details editted successfully!"
}

save_user ()
{
    read -p "Confirm save user? (y/n) >> "
    echo "User successfully saved!"
}

change_password ()
{
    read -sp "What is your new password: " newpassword
    echo $newpassword>password.txt
    echo "Password changed successfully!"
}

print_report ()
{
    read -p "Which report to print?: " answer
    cat $answer.txt
    echo "Report printed!"
}

main ()
{
    show_menu
        echo -n "Enter option >>"
        read option

        case $option in
        1)
            register_user
            ;;
        2)
            users_details
            ;;
        3)
            edit_user
            ;;
        4)
            save_user
            ;;
        5)
            change_password
            ;;
        6)
            print_report
            ;;
        *)
            echo "Enter a correct option!"
            ;;
        esac

}

main


