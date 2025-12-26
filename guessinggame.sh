#!/usr/bin/env bash

function count_files {
  echo $(ls -1 | wc -l)
}

files=$(count_files)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $files ]]
do
  read guess
  if [[ $guess -lt $files ]]
  then
    echo "Too low. Try again:"
  elif [[ $guess -gt $files ]]
  then
    echo "Too high. Try again:"
  else
    echo "🎉 Congratulations! You guessed correctly."
  fi
done
