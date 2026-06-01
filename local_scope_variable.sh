#!/bin/bash
PUBLISHER="No Starch Press" #PUBLISHER is a global variable, a global variable can be used anywhere outside the script
print_name(){
 local name #Name is a local variable, a local variable can only be used inside the script
 name="Black Hat Bash"
 echo "${name} by ${PUBLISHER}"
}
print_name #To call the function is only needed to put the variable's name
echo "Variable ${name} will not be printed because it is a local variable."