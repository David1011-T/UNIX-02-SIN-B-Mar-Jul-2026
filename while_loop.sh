#!/usr/bin/env bash

SIGNAL_TO_STOP_FILE="stoploop" #Creates variable to signal stop 

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do #Loop to see if the file exists
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." #Prints while the file doesn't exits
 echo "Checking again in 2 seconds..." #Prints "Checking again in 2 seconds..."
 sleep 2 #Sleeps for 2 seconds
done #Done the loop while
echo "File was found! Exiting..." #Prints "File was found! Exiting..."