#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

#Colours used in script
Green="\033[32m"
Yellow="\033[33m"
Red="\033[31m"

#allow user to choose from 3 colours 
#to start registration in that colour
echo "Which is your favourite colour among?: "
COLOURS="Red Green Yellow"
select colour in $COLOURS
do
    case $colour in
    Red )
        echo -e "${Red}You chose Red!"
        read -p "What is your name? " name
        read -p "What is your date of birth? dd/mm/yy " dob
        read -p "Where is your address?: " address
        #copy all the user input data into a text file
        #text file act as a database
        echo -e "${Red}Your name is: $name" >> userdata.txt
        echo "Your date of birth is: $dob" >> userdata.txt
        echo "Your address is: $address " >> userdata.txt
        echo "Your favourite colour is $colour" >> userdata.txt
        #make terminal clean
        clear 
        #print user data in favourite colour
        cat userdata.txt
        echo "Registration successful!"
        exit 0
        ;;
    Green )
        echo -e "${Green}You chose Green!"
        read -p "What is your name? " name
        read -p "When is your date of birth? dd/mm/yy " dob 
        read -p "Where do you stay?: " address
        echo -e "${Green}Your name is: $name" >> userdata.txt
        echo "Your date of birth is: $dob" >> userdata.txt
        echo "Your address is: $address" >> userdata.txt
        echo "Your favourite colour is $colour" >> userdata.txt
        clear
        cat userdata.txt
        echo "Registration successful!"
        exit 0
        ;;
    Yellow )
        echo -e "${Yellow}You chose Yellow!"
        read -p "What is your name? " name
        read -p "What is your date of birth? dd/mm/yy " dob
        read -p "Where is your address?: " address
        echo -e "${Yellow}Your name is: $name" >> userdata.txt
        echo "Your date of birth is: $dob" >> userdata.txt
        echo "Your address is: $address" >> userdata.txt
        echo "Your favourite colour is $colour" >> userdata.txt
        clear
        cat userdata.txt
        echo "Registration successful!"
        exit 0
        ;;
    * ) 
        #if user input any other option
        echo "Enter a correct option!"
    esac
done