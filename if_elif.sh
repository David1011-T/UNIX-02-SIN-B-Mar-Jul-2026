#!/usr/bin/env bash
USER_INPUT="${1}" #Creates a variable with content of the argument 

if [[ -z "${USER_INPUT}" ]]; then #Comparison if the content of the variable is NULL
 echo "You must provide an argument!" #Prints You must provide an argument
 exit 1 #Exits with code 1
fi #Ends if loop
if [[ -f "${USER_INPUT}" ]]; then #Comparison if the variable is a file
 echo "${USER_INPUT} is a file." #Prints the name of variable is a file
elif [[ -d "${USER_INPUT}" ]]; then #A comparison after the previous comparison to see if the variable is a directory
 echo "${USER_INPUT} is a directory." #Prints the name of the variable is a directory
else #A comparison else if everithing before is false
echo "${USER_INPUT} is not a file or a directory." #Prints the name of the variable is not a file or a directory
fi #Ends if loop