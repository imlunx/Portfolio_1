#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

# prompt user which scipt file to be move
read -p "Which script file do you want to be moved to Folder2?: " file
# move desired file to Folder 2
mv $file.sh ../Folder2

exit 0