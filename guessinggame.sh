#!/bin/bash

file_count=$(ls | wc -l)
# echo "The file count is $file_count"

echo "You need to guess the number of files in this directory"

while [[ $response -ne $file_count ]]
do
        echo
        echo "What is your GUESS?"
        read response
        if [[ $response -gt $file_count ]]; then
                echo
                echo "Your guess is HIGHER. Try Again..."
        else
                echo
                echo "Your guess is LOWER. Try Again..."
        fi
done

echo
echo "*************************************"
echo "CONGRATULATIONS! You guessed it right!"
echo "*************************************"
