#! /bin/bash

echo "Welcome to User Registration";
read -p "Enter First Name : " Fname
read -p "Enter Last Name : " Lname
read -p "Enter Email : " email
patFn='^[A-Z]';
patFn='[A-Za-z]{3}';
patLn='^[A-Z]';
patLn='[A-Za-z]{3}';
patEmail="^[a-zA-Z0-9.+_-]+[@][a-zA-Z0-9]+[.]co(m|.in)$"
if [[ $Fname =~ $patFn && $Lname =~ $patLn ]]
then
	echo "correct";
else
	echo "incorrect";
fi
if [[ $email =~ $patEmail ]];
then
	echo "Email is correct";
else
	echo "Enter Valid email address";
fi