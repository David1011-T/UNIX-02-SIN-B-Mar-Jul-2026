#!/usr/bin/env bash
# All this script does is create a directory, create a file
# within the directory, and then list the contents of the directory.
set -x
mkdir mydirectory
touch mydirectory/myfile
ls -l mydirectory
set +x

# bash -n blackhatbash2.sh

# bash -x blackhatbash2.sh
# -x
#+ mkdir mydirectory
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0

# bash blackhatbash2.sh
#set -x set +x
#+ mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:21 myfile
#+ set +x
