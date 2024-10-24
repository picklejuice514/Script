#!/bin/bash

echo "Welcome to my script, would you like to make a new directory or monitor your systems health?"
read -p "For making a new directory type '1'. For monitoring your system health type '2'." user_option

if ["$user_option" = "1"] then
	read -p "Enter directory name:" user_input


if [ -d "$user_input" ]; then
  echo "Directory '$user_input' already exists."
else
  echo "Directory '$user_input' does not exist. Creating now."
  mkdir "$user_input"
  echo "Directory '$user_input' created."
fi
elif ["$user_option" = "2" ]; then
	echo "Opening the system monitoring app..."
	gnome-system-monitor
