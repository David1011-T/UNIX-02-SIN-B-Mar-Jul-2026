#!/usr/bin/env bash
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
bash -r blackhatbash1.sh #-r is used to execute the command in restrited mode