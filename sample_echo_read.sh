#!/bin/bash

# This script creates a story by collecting user inputs.

# Prompt the user for a noun
echo "Enter a noun:"
read noun

# Prompt the user for a verb
echo "Enter a verb (past tense):"
read verb

# Prompt the user for an adjective
echo "Enter an adjective:"
read adjective

# Prompt the user for a place
echo "Enter a place:"
read place

# Prompt the user for an animal
echo "Enter an animal:"
read animal

# Display the completed Mad Libs story using the inputs
echo "Here's your Mad Libs story:"
echo "Once upon a time in $place, there was a $adjective $animal."
echo "Every day, it would $verb in the fields."
echo "And that's the story of the $noun that lived happily ever after!"