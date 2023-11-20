#!/bin/bash
# This first line of the script is shebang which tell the system how to execute
echo "-------------------------------"
echo "Bash script is fun with @tws"
echo "-------------------------------"
sleep 0.5
echo 

# Reading user inpunt with variable
echo "-------------------------"
read -p "Enter your firstname: " firstname
echo "-------------------------"
sleep 0.5
echo "--------------------"
read -p "Enetr your surname: " surname
echo "--------------------"
sleep 0.5
echo "--------------------------------------------------"
echo "Welcome ***$firstname $surname***"
echo "--------------------------------------------------"
echo
sleep 0.5


# Taking input from user for operation 
while true; do
	
	read -p "Enter the first number: " num1
	read -p "Enter the second number: " num2
	read -p "Enter operator to perform action (+,-,/,*): " operator

		if [ "$operator" = "+" ]; then
			result=$((num1+num2))

		elif [ "$operator" = "-" ]; then
			result=$((num1-num2))

		elif [ "$operator" = "*" ]; then
        		result=$((num1*num2))

		elif [ "$operator" = "/" ]; then
        		result=$((num1/num2))	
		else 
	echo " Invalid operator Chosen "
	exit 1
	fi

	echo "The result  for $num1 $operator $num2 is : $result"

	# Asking user if the want to continue or exit
	read -p "Do you want to continue (Y/N)? " choice 

	if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
		continue
	else 
		echo -n "Exiting"
		for i in {1..3}; do
			echo -n "."
			sleep 0.5 
		done
		echo ""
		echo "Thank You $firstname $surname, See You Soon!!!!!!!!"
		break
	fi
done







