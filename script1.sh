#!/bin/bash
while true; do
echo "Welcome to my script!"
echo "For making a new directory type '1'."
echo "For monitoring your system health type '2'."
echo "To exit, type '3':"
read -p "Please pick your option: " user_option

if [ "$user_option" = "1" ]; then
  read -p "Enter directory name: " user_input

  if [ -d "$user_input" ]; then
    echo "Directory '$user_input' already exists."
  else
    echo "Directory '$user_input' does not exist. Creating now."
    mkdir "$user_input"
    echo "Directory '$user_input' created."
  fi

elif [ "$user_option" = "2" ]; then
  echo "Opening the system monitoring app..."
  gnome-system-monitor
  
elif [ "$user_option" = "3" ]; then
echo "Exiting..."
sleep 1
exit 0
else
  echo "Invalid option selected."
fi
done
