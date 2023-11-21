#!/bin/bash

echo "--------------------------------"
echo "This is basic calculation script"
echo "--------------------------------"
echo
sleep 0.5

echo "---------------------------------"
read -p " Enter your firstname; " firstname
echo "---------------------------------"
echo 

echo "----------------------------------"
read -p "Enter your surname: " surname
echo "----------------------------------"
sleep 0.5

while true; do

	read -p "Enter your numbers with speces you want to calculate: " -a nums
	read -p "Enter the operator (+,-,*,/): " opt

	output=${nums[0]}

	for ((i = 1; i < ${#nums[@]}; i++)); do
		if [ "$opt" = "+" ]; then
			output=$((output + nums[i]))
		elif [ "$opt" = "-" ]; then
                	output=$((output - nums[i]))

		elif [ "$opt" = "*" ]; then
                	output=$((output * nums[i]))

		elif [ "$opt" = "/" ]; then
                	output=$((output / nums[i]))
		else
		echo "Invalid operator selected"
		echo -n "Exiting"
		for i in {1..3}; do
			echo -n "."
			sleep 0.5
		done
		exit 1
		fi
	done

	echo " The output for ${nums[*]} $opt is: $output "

	read -p " Do you want to continue (Y/N)?: " choice
	
	if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
		continue
	else
		echo -n "Exiting"
		for i in {1..3}; do
			echo -n "."
			sleep 0.5
		done
		echo ""
		echo "Thank you $firstname $surname, see you soon "
		break
	fi
done



























			
