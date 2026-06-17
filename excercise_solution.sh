#!/usr/bin/env bash

NAME="${1}" # Assigns the first positional argument passed to the script to the variable NAME.

DOMAIN="${2}" # Assigns the second positional argument passed to the script to the variable DOMAIN.

# Defines a variable OUTPUT_FILE and assigns it the string value results.csv, which will be used as the target file.
OUTPUT_FILE="results.csv" 

if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then # Starts an if conditional statement. It checks if the length of the string in NAME is zero -z OR || if the length of the string in DOMAIN is zero.
  
  echo "You must provide two arguments to this script." # Prints an error message to the standard output informing the user that two arguments are required.
  
  echo "Example: ${0} mysite nostarch.com" # Prints an example of how to correctly execute the script, where ${0} represents the name of the script itself.
  
  exit 1 # Terminates the script immediately and returns an exit status code of 1, indicating an error occurred.
fi # Closes the first if conditional block.

echo "status,name,domain,timestamp" > ${OUTPUT_FILE} # Prints the CSV header row and redirects > the output to overwrite or create the file specified by OUTPUT_FILE.

# Starts an if block evaluating the ping command. -c 1 sends exactly one ping packet to the DOMAIN. &> /dev/null redirects both standard output and standard error to the null device (silencing all terminal output).
if ping -c 1 "${DOMAIN}" &> /dev/null; then
  
  # If the ping was successful exit code 0, it appends >> a comma-separated string containing success, the NAME, the DOMAIN, and the current system date/time (obtained by evaluating $(date)) into the OUTPUT_FILE.
  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"

# Executes the following block if the previous if condition failed the ping was unsuccessful.
else
  
  # Appends >> a comma-separated string containing failure, the NAME, the DOMAIN, and the current system date/time into the OUTPUT_FILE.
  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"

fi # Closes the if-else conditional block.