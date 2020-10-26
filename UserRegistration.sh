#!/bin/bash -x
echo "Welcome to User Registration Validation"
#first_name validation
read -p "Enter First Name: " fname;
fname_pattern="^[A-Z][a-zA-Z]{2,}$";
if [[ $fname =~ $fname_pattern ]]
then
	echo "Valid First Name";
else
	echo "Invalid First Name";
fi
