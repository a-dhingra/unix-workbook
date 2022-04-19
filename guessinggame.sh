#!/usr/bin/env bash

file_count=$(ls -1A|wc -l)
# echo "The file count is" $file_count
echo
echo "Let's play a game"
echo "Please guess the number of files in this directory"

function logic {
	if [[ $1 -ne $2 ]]; then
		if [[ $1 -gt $2 ]]; then
			echo "Your guess is HIGHER than the correct answer. Try again"
		else
			echo "Your guess is LOWER than the correct answer. Try again."
		fi
	else
		echo "********************************************"
		echo "*  CONGRATULATIONS! You guessed it right!  *"
		echo "********************************************"
	fi
}

while [[ $response -ne $file_count ]]
do
	echo
	echo "What is your Guess?"
	read response
	# echo $response
	# if  [[ ! $response == *[\@\~\#\`\$\%\^\&\*\(\)\_\-\+]* ]] && [[ ! $response == *[a-zA-Z]* ]] && [[ ! $response == *[[:space:]]* ]]
	if  [[  $response =~ ^[0-9]{1,}+$ ]]
	then
		logic $response $file_count
	else
		echo "INVALID Response!! Please try again..."
		response=0
	fi
done
