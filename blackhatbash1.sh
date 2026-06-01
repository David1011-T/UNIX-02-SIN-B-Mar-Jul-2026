#!/usr/bin/env bash
set -x
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
#!/bin/bash -x  #Shows all the commands executed to the terminal
#bash -r blackhatbash1.sh #-r is used to execute the command in restrited mode
#bash -n blackhatbash1.sh #-n is used to read the commands and not excecute them. Debugging
set +x