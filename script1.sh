#!/bin/bash

# Define the directory path
dir_name="Soccer"

# Check if the directory exists
if [ -d "$dir_name" ]; then
  echo "Directory '$dir_name' already exists."
else
  echo "Directory '$dir_name' does not exist. Creating now."
  mkdir "$dir_name"
  echo "Directory '$dir_name' created."
fi
