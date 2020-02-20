#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

#colours used in script
Red="\033[31m"
Blue="\033[34m"
Cyan="\033[36m"
Green="\033[32m"
Yellow="\033[33m"
Purple="\033[35m"
White="\033[97m"

#menu shown in terminal if user did not enter argument
#displayed in different colours
show_menu ()
{
    echo -e "${Blue}1. Register User"
    echo -e "${Red}2. Users Details"
    echo -e "${Cyan}3. Edit User"
    echo -e "${Green}4. Save a User"
    echo -e "${Purple}5. Change Password"
    echo -e "${Yellow}6. Print report"
    #request user input
    echo -e "${White}Enter Your Option >> "
    read input
    #process user input
    menu "$input"
}
#when user request to register
register_user ()
{
    #copy username into users file
    read -p "Type Your Desired User Name: " username
    echo $username >> user.txt
    #copy user input in secret to password file
    read -sp "Type in your desired password: " password
    echo $password >> password.txt
    echo -e "\nNew user registered!" 
}
#display user details
users_details ()
{
    echo "Displaying all user details!"
    cat user.txt
}
#if user wants to edit details
edit_user ()
{
    read -p "What new username would you like: " newusername
    echo $newusername>user.txt
    echo "User details editted successfully!"
}
#option for user to save user
save_user ()
{
    echo "User successfully saved!"
}
#option to change password
change_password ()
{
    read -sp "What is your new password: " newpassword
    echo $newpassword>password.txt
    echo "Password changed successfully!"
}
#option to print report
print_report ()
{
    read -p "Which report to print?: " answer
    cat $answer.txt
    echo "Report printed!"
}
#main process of script
menu ()
{
    case $input in
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
#differentiate if user wants to input option as an argument
main ()
{
    if [ $# -eq 0 ]; then
    show_menu
    else
    input="$1"
    menu "$input"
    fi
}

main "$@"
