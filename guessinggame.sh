#!/bin/bash

get_file_count() {
    echo $(ls -1 | wc -l)
}

correct_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

while true; do
    read -p "Enter your guess: " user_guess

    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [[ $user_guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed it right. There are $correct_count files."
        break
    fi
done