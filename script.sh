ls -a #lists all in the file Short command
ls --all #lists all in the file Large command
#command-options-arguments
ls -l #Lists in format "long list"
ls -h #Lists files humanly legible
ls -l -a -h #Lists all files in format long list and humanly legible
ls -l -ah #Lists all files in format long list and humanly legible
ls -lah #Lists all files in format long list and humanly legible
mkdir -- -rf #Creates a directory named "-rf" the "--" states that what is next is an argument
rmdir -- -rf #Deletes a directory named "-rf" the "--" states that what is next is an argument
ls --help #Short explanation about the command ls
man ls #Complete manual about ls
#--depth <depth>
           #Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to
           #fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.q
chmod #Sintaxis: Who,operator,permissions, file. Change Mode
chmod +x script.sh #Everyone can execute script.sh
chmod u+x script.sh #Only the owner can execute script.sh
chmod o-r script.sh #Remove reading to "others"
chmod u+rw,go-rwx script.sh #Owner reads/writes, nobody else cans
sudo echo "hola" > /etc/archivo_protegido # bash: /etc/archivo_protegido: Permission denied. It divides the command in 2 parts and sudo executes for the 2 parts and there isn´t permissions for root
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #echo executes as a normal user, the pipeline passes the output to tee. sudo tee executes with priviliges for root. >/dev/null makes that the message in the terminal
cat /etc/archivo_protegido #calls for the content of the file
echo "hola" | sudo tee /etc/archivo_protegido #echo executes as a normal user and prints "hola", the pipeline passes the output to tee. sudo tee executes with priviliges fot root.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' #Opens a shell in sudo and says to shell -c that everything that is in '' interprets the shell
cat /etc/archivo_protegido #calls for the content of the file