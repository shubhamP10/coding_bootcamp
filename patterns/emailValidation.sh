#! /bin/bash
read -p "Enter email id " email
pat="^[a-zA-Z0-9.+_-]+[@][a-zA-Z0-9]+[.]co(m|.in)$"
if [[ $email =~ $pat ]]
then
	echo "correct";
else
	echo "incorrect";
fi
