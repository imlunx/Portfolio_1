#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

# Request input from users
echo "Set up folders needed for portfolio 1?: "
read -p "Yes/No >> " Answer 

# If input is yes, folders created
if [ $Answer = "Yes" ]|| [ $Answer = "y" ]; then 

#make Portfolio 1 folder
mkdir Portfolio_1; cd Portfolio_1

#make Task 1,2 and 3 folder inside Portfolio 1
mkdir Task_1 Task_2 Task_3

#make Folder1 and Folder2 inside Task 1
cd Task_1; mkdir Folder1 Folder2

# If input is no, will promt user to input yes instead
elif [ $Answer = "No" ] || [ $Answer = "n" ]; then
echo "Aww, enter Yes once you are ready!"

# Any other input is rejected and redirect to accepted input
else
echo "Sorry, only Yes or No is accepted!"
fi

exit 0