#!/usr/bin/bash
#Purpose of this command is to commit all files in a repo and push them to
#Github

echo "Please Enter Your Commit Message"

COMMIT_MESSAGE=""

while [ -z "$COMMIT_MESSAGE" ]; 
do
	read -rp "Commit Message:" COMMIT_MESSAGE

	if [ -z "$COMMIT_MESSAGE" ]
	then	
		#Printing text and coloring it using an escape sequence
		echo -e "\e[32m Commit Message Cannot Be Empty\e[0m"
	fi
done

git add .

if git commit -m "$COMMIT_MESSAGE"; 
then
    git push
    echo "Your work has been successfully pushed to GitHub"
else
    echo "Git commit failed. Please check for errors."
    exit 1
fi