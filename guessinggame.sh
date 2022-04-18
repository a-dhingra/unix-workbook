#!/usr/bin/env

all_files=( * )            # includes directories
directories=( */ )         # directories only
hidden_files=( .* )        # includes directories
hidden_directories=( .*/ ) # directories only

Number_of_files=$(( ${#all_files[@]} - ${#all_directories[@]} ))
# Number_of_directories=${#directories[@]}
Number_of_hidden_files=$(( ${#hidden_files[@]} - ${#hidden_directories[@]} ))
# Number_of_hidden_directories=$(( ${#hidden_directories[@]} - 2 ))

file_count=$((Number_of_files + Number_of_hidden_files))

echo
echo "Let's play a game"
echo "You need to guess the number of files in this directory"

function logic {
        if [[ $1 -ne $2 ]]; then
                if [[ $1 -gt $2 ]]; then
                        echo
                        echo "Your guess is HIGHER than the correct answer. Try Again..."
                else
                        echo
                        echo "Your guess is LOWER than the correct answer. Try Again..."
                fi
        else
                echo "************************************"
                echo "CONGRATUATIONS! You guessed it right!"
                echo "************************************"
        fi
}

while [[ $response -ne $file_count ]]
do
        echo
        echo "What is your GUESS?"
        read response
		if  [[ $response == *[a-zA-Z'!'\@#\$\%\^\&\*\(\)_+]* ]]; then
				echo "Invalid input! Please try again"
				response=0
        #if [[ $response == +([0-9]) ]]; then
        #        logic $response $file_count
        else
				logic $response $file_count
        fi
done
