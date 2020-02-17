#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

# prompt user which file to be move
read -p "Which file do you want to be moved to Folder2?: " file
# move desired file to one folder up
mv $file.sh ..; cd ..
# move desired file into Folder2
mv $file.sh Folder2

exit 0