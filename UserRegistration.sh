#!/bin/bash -x
echo "Welcome to User Registration Validation"
#first_name validation
read -p "Enter First Name: " fname;
pattern="^[A-Z][a-zA-Z]{2,}$"
if [[ $fname =~ $pattern ]]
then
	echo "Valid First Name";
else
	echo "Invalid First Name";
fi

#last_name validation
read -p "Enter Last Name: " lname;
if [[ $lname =~ $pattern ]]
then
  	echo "Valid Last Name";
else
   echo "Invalid Last Name";
fi

#email validation
read -p "Enter E-mail: " email;
pattern="^[a-zA-Z0-9]+([-+.]?)([a-zA-Z0-9]?)+@[a-zA-Z0-9]+.+[a-zA-Z]$"
if [[ $email =~ $pattern ]]
then
   echo "Valid E-mail";
else
   echo "Invalid E-mail";
fi

#mobile_number validation with predefined country code and 10 digits
read -p "Enter mobile number: " num;
pattern="[1-9+][ ][0-9]{10}$";
if [[ $num =~ $pattern ]]
then
   echo "Valid Mobile Number";
else
   echo "Invalid Mobile Number";
fi

#password validation
#rule1- min 8 characters
read -p "Enter password: " pass;
if [ ${#pass} -lt 8 ]
then
	echo "Password less than 8 characters";
else
	echo "Rule 1(min 8 char) passed";
fi
