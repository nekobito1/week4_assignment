#!/usr/bin/env bash
# File: guessinggame.sh

# get the number of files in the current directory (including hidden files.)
function getnumfiles {
  nfiles=$(ls -a | wc -l)
  echo $nfiles
}

num_files=$(getnumfiles)

# Keep prompting user to guess how many files are in the current directory until user gets it right
echo -n "Please guess how many files are in the current directory: "
read user_guess
while ! [[ $user_guess =~ ^[0-9]+$ ]]
do
  echo "Your guess must be an integer."
  echo -n "Guess again: "
  read user_guess
done

while [[ $user_guess -ne $num_files ]]
do

  # check to make sure user input is an integer
  if ! [[ $user_guess =~ ^[0-9]+$ ]]
  then
    echo "Your guess must be an integer."
  else
    # give user a hint...
    if [[ $user_guess -lt $num_files ]]
    then
      echo "The number is too low."
    else
      echo "The number is too high."
    fi
  fi

  echo -n "Guess again: "
  read user_guess
done

echo "Congratulations, you guessed right!  Number of files were: $user_guess"
