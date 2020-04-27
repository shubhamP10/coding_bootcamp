#! /bin/bash

echo "Welcome to User Registration";
read -p "Enter First Name : " Fname
read -p "Enter Last Name : " Lname
patFn='^[A-Z]';
patFn='[A-Za-z]{3}';
patLn='^[A-Z]';
patLn='[A-Za-z]{3}';

if [[ $Fname =~ $patFn && $Lname =~ $patLn ]]
then
	echo "correct";
else
	echo "incorrect";
fi