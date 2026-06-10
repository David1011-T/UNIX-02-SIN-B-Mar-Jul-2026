#!/usr/bin/env bash

# This function checks if the current user ID equals zero.
check_if_root(){ #Creates function check_if_root
    if [[ "${EUID}" -eq "0" ]]; then #Comparison if the efective user id is equal to 0
    return 0 #If true returns code 0
    else #Comparison when if is false
    return 1 #If false returns code 1
    fi #Ends if loop
}
if check_if_root; then #Comparison if the result of the funcion is 1 or 0
 echo "User is root!" #If true prints "User is root!"
else #Continues if the result before is false
 echo "User is not root!" #Prints "User is not root!"
fi #Ends if loop