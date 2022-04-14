#!/bin/env

file_count=$(ls | wc -l)

echo "Let's play a game"
echo "You need to guess the number of files in this directory"

function logic {
        if [[ $1 -ne $2 ]]; then
                if [[ $1 -gt $2 ]]; then
                        echo
                        echo "Your guess is HIGHER. Try Again..."
                else
                        echo
                        echo "Your guess is LOWER. Try Again..."
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
        if [[ $response == +([0-9]) ]]; then
                logic $response $file_count
        else
                echo "Invalid input! Please try again"
        fi
done
