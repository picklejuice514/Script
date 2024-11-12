#!/bin/bash


# Age in Days Calculator
# This script calculates the user's age in days based on the age in years.


# Prompt the user for their age in years
# The 'read' command takes input from the user and stores it in a variable called 'age_years'
read -p "Enter your age in years: " age_years


# Check if the input is a valid number
# Here, we use an 'if' statement to check a condition
# The double square brackets [[ ]] are used for conditional expressions
# The '!~' operator means 'does not match', and '^[0-9]+$' is a pattern (regex) that means "only digits allowed"
if [[ ! $age_years =~ ^[0-9]+$ ]]; then
    # If the input is not a valid number, this message is displayed
    echo "Please enter a valid number."
    # 'exit 1' ends the script with an error code
    # Error codes are often hard to understand, that is why we use the 'echo' above.
    # The 'echo' clearly states to the user what exactly went wrong.
    exit 1
fi


# Calculate the age in days (approximate, ignoring leap years)
# We use $(( )) to do arithmetic calculations
age_days=$((age_years * 365))


# Display the result
# 'echo' is used to print messages to the screen
echo "You are approximately $age_days days old."
