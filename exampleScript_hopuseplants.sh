#!/bin/bash

# House Plant Care Script

# Initial greeting
echo "Welcome to the House Plant Care Assistant!"

echo "Let's take care of your plants together!"

# Display menu of common house plants
echo "Please choose a plant to learn more about how to care for it:"
echo "1. Snake Plant"
echo "2. Spider Plant"
echo "3. Aloe Vera"
echo "4. Peace Lily"
echo "5. Pothos"

# Read user choice
read plant_choice

# Initialize variable to store the chosen plant name
plant_name=""

# If-else statements to determine the chosen plant and assign the plant name
# Based on the user's choice, set the plant_name variable and provide a basic message
if [ "$plant_choice" -eq 1 ]; then
  plant_name="Snake Plant"
  echo "You chose $plant_name. Great choice! $plant_name are very low-maintenance."
elif [ "$plant_choice" -eq 2 ]; then
  plant_name="Spider Plant"
  echo "You chose $plant_name. $plant_name are easy to grow and thrive in indirect sunlight."
elif [ "$plant_choice" -eq 3 ]; then
  plant_name="Aloe Vera"
  echo "You chose $plant_name. $plant_name is great for skin care and needs bright, indirect sunlight."
elif [ "$plant_choice" -eq 4 ]; then
  plant_name="Peace Lily"
  echo "You chose $plant_name. $plant_name enjoys humid environments and low light conditions."
elif [ "$plant_choice" -eq 5 ]; then
  plant_name="Pothos"
  echo "You chose $plant_name. $plant_name plants are versatile and thrive in a variety of lighting conditions."else
  echo "Invalid choice. Please run the script again and select a valid option (1-5)."
  exit 1  # Exit the script if the user enters an invalid plant choice
fi

# Functions for each plant type
# Functions are defined before they are called to ensure they are available when needed
# In Bash, when you want to use a function later in the script, you need to define it first.
# This means placing all the functions at the top or at least before they are used. 
# This way, when the script reaches the part where the function is called, it already knows what that function does.
# Each function provides detailed care instructions for a specific plant type
snake_plant_details() {
  echo "\n====================="
  echo "   Snake Plant Care   "
  echo "====================="
  echo "Latin Name: Sansevieria trifasciata"
  echo "Native Region: West Africa"
  echo "1. Watering:"
  echo "   - Snake Plants are very drought-tolerant."
  echo "   - Water every 2-4 weeks, allowing the soil to dry out between waterings."
  echo "2. Light:"
  echo "   - Prefers indirect light but can tolerate low light conditions."
  echo "3. General Tips:"
  echo "   - Avoid overwatering as it can cause root rot."
}

spider_plant_details() {
  echo "\n====================="
  echo "   Spider Plant Care   "
  echo "====================="
  echo "Latin Name: Chlorophytum comosum"
  echo "Native Region: South Africa"
  echo "1. Watering:"
  echo "   - Water once a week, keeping the soil slightly moist."
  echo "   - Spider Plants enjoy occasional misting."
  echo "2. Light:"
  echo "   - Thrives in bright, indirect light."
  echo "3. General Tips:"
  echo "   - Spider Plants produce 'babies' (offshoots) that can be easily propagated."
}

aloe_vera_details() {
  echo "\n====================="
  echo "   Aloe Vera Care   "
  echo "====================="
  echo "Latin Name: Aloe barbadensis miller"
  echo "Native Region: Arabian Peninsula"
  echo "1. Watering:"
  echo "   - Water deeply but infrequently."
  echo "   - Allow the soil to dry out completely between waterings to avoid root rot."
  echo "2. Light:"
  echo "   - Requires bright, indirect sunlight to thrive."
  echo "3. General Tips:"
  echo "   - Aloe Vera gel can be used for minor burns and skin care."
}

peace_lily_details() {
  echo "\n====================="
  echo "   Peace Lily Care   "
  echo "====================="
  echo "Latin Name: Spathiphyllum spp."
  echo "Native Region: Tropical Americas and Southeast Asia"
  echo "1. Watering:"
  echo "   - Keep the soil consistently moist but not soggy."
  echo "   - Peace Lilies enjoy high humidity, so mist the leaves occasionally."
  echo "2. Light:"
  echo "   - Prefers low to medium light but can tolerate indirect light."
  echo "3. General Tips:"
  echo "   - Wipe the leaves to remove dust, which helps the plant breathe better."
}

pothos_details() {
  echo "\n====================="
  echo "   Pothos Care   "
  echo "====================="
  echo "Latin Name: Epipremnum aureum"
  echo "Native Region: French Polynesia"
  echo "1. Watering:"
  echo "   - Water when the top inch of soil feels dry."
  echo "   - Avoid letting the plant sit in water as this can lead to root rot."
  echo "2. Light:"
  echo "   - Pothos can tolerate a range of light conditions, from low to bright, indirect light."
  echo "3. General Tips:"
  echo "   - Pothos are great for improving indoor air quality."
}

# Ask the user if they want to exit or learn more details
# Use a while loop to ensure valid input (Y/N) is provided by the user
while true; do
  echo "\nWould you like to learn more details about caring for your $plant_name or exit? (Y/N)"
  read user_action

  # Check the user's response using regex to allow for case-insensitive input
  if [[ "$user_action" =~ ^[yY]$ ]]; then
    # Call the corresponding function based on the plant name
    if [ "$plant_name" == "Snake Plant" ]; then
      snake_plant_details
    elif [ "$plant_name" == "Spider Plant" ]; then
      spider_plant_details
    elif [ "$plant_name" == "Aloe Vera" ]; then
      aloe_vera_details
    elif [ "$plant_name" == "Peace Lily" ]; then
      peace_lily_details
    elif [ "$plant_name" == "Pothos" ]; then
      pothos_details
    fi
    break  # Exit the while loop after displaying the plant details
  elif [[ "$user_action" =~ ^[nN]$ ]]; then
    # Exit the script if the user chooses not to learn more
    echo "Goodbye! Take care of your $plant_name!"
    exit 0  # Exit the script successfully after saying goodbye
  else
    # Prompt the user again if they enter an invalid option
    echo "Invalid option. Please enter Y or N."
  fi
# 'done' marks the end of the while loop, meaning all the repeated actions stop here
# if the user input is valid or chooses to exit.
done
