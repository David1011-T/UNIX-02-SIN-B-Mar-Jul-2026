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
sudo su - #Enters root mode, you can exit with "exit"
echo "$HOME" #Expands variable "/home/codespace"
echo '$HOME' #Prints '$HOME' "$HOME"
$ umask #Predetermined mask for the operating system
touch archivo 1 #Creates a file named "archivo1"
mkdir directorio 1 #Creates a directory named "directorio1"
ls -l #Lists permissions for all the files and directories
#total 64
#-rw-rw-rw-  1 codespace root      34523 Apr 27 12:07 LICENSE
#-rw-rw-rw-  1 codespace root         70 Apr 27 12:07 README.md
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:31 archivo1
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
#-rw-rw-rw-  1 codespace root        659 Apr 27 12:07 ejercicio1.sh
#-rw-rw-rw-  1 codespace root        326 Apr 27 12:07 ejercicio2.sh
#-rwxrwxrwx  1 codespace root         45 Apr 27 12:07 hola.sh
#-rwxrwxrwx  1 codespace root          0 Apr 27 12:07 prueba.txt
#-rwxrwxrwx  1 codespace root       2364 Apr 27 12:31 script.sh
umask 027 #Changes value of the mask to 027
touch archivo2 #Creates a file named "archivo2"
mkdir directorio2 #Creates a directory named "directorio2"
ls -l #Lists permissions for all the files and directories
#-rw-rw-rw-  1 codespace root      34523 Apr 27 12:07 LICENSE
#-rw-rw-rw-  1 codespace root         70 Apr 27 12:07 README.md
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:31 archivo1
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:36 archivo2
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:36 directorio2
#-rw-rw-rw-  1 codespace root        659 Apr 27 12:07 ejercicio1.sh
#-rw-rw-rw-  1 codespace root        326 Apr 27 12:07 ejercicio2.sh
#-rwxrwxrwx  1 codespace root         45 Apr 27 12:07 hola.sh
#-rwxrwxrwx  1 codespace root          0 Apr 27 12:07 prueba.txt
#-rwxrwxrwx  1 codespace root       2701 Apr 27 12:37 script.sh
umask 077 #Changes value of the mask to 077
touch secreto.txt #Creates a file named "secreto.txt"
mkdir privado #Creates a directory named "privado"
ls -l #Lists permissions for all the files and directories
#total 72
#-rw-rw-rw-  1 codespace root      34523 Apr 27 12:07 LICENSE
#-rw-rw-rw-  1 codespace root         70 Apr 27 12:07 README.md
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:31 archivo1
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:36 archivo2
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:32 directorio1
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:36 directorio2
#-rw-rw-rw-  1 codespace root        659 Apr 27 12:07 ejercicio1.sh
#-rw-rw-rw-  1 codespace root        326 Apr 27 12:07 ejercicio2.sh
#-rwxrwxrwx  1 codespace root         45 Apr 27 12:07 hola.sh
#drwxrwxrwx+ 2 codespace codespace  4096 Apr 27 12:40 privado
#-rwxrwxrwx  1 codespace root          0 Apr 27 12:07 prueba.txt
#-rwxrwxrwx  1 codespace root       4214 Apr 27 12:40 script.sh
#-rw-rw-rw-  1 codespace codespace     0 Apr 27 12:40 secreto.txt
sudo apt-get update #Gets all updates
sudo apt-get install acl #Install app acl
sudo chown -R $(whoami) . #Changes owner for the files and directories to the actual user
sudo setfacl -bnR . #Changes to the basic permissions to the files
umask 077 #Changes mask to 077
touch se #Creates file "se"
mkdir pri #Creates directory "pri"
ls -l #Lists all files and permissions
#total 76
#-rw-rw-rw- 1 codespace root      34523 Apr 27 12:07 LICENSE
#-rw-rw-rw- 1 codespace root         70 Apr 27 12:07 README.md
#-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:31 archivo1
#-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:36 archivo2
#drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:32 directorio1
#drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:36 directorio2
#-rw-rw-rw- 1 codespace root        659 Apr 27 12:07 ejercicio1.sh
#-rw-rw-rw- 1 codespace root        326 Apr 27 12:07 ejercicio2.sh
#-rwxrwxrwx 1 codespace root         45 Apr 27 12:07 hola.sh
#drwx------ 2 codespace codespace  4096 Apr 27 12:49 pri
#drwxrwxrwx 2 codespace codespace  4096 Apr 27 12:40 privado
#-rwxrwxrwx 1 codespace root          0 Apr 27 12:07 prueba.txt
#-rwxrwxrwx 1 codespace root       5062 Apr 27 12:41 script.sh
#-rw------- 1 codespace codespace     0 Apr 27 12:49 se
#-rw-rw-rw- 1 codespace codespace     0 Apr 27 12:40 secreto.txt
umask 022 #Changes mask value to 022
whoami #Who`s the user
echo "Hola" > mi_archivo #Creates file "mi_archivo" with "Hola"
ls -l mi_archivo #Lists permissions for the file "mi_archivo"
#-rw-r--r-- 1 codespace codespace 5 Apr 27 13:12 mi_archivo
sudo useradd -m -s /usr/bin/zsh luna #Creates new user named "luna"
sudo chown luna mi_archivo #Changes owner of the file "mi_archivo" to luna
ls -l mi_archivo #Lists permissions for the file "mi_archivo"
groups #Shows groups
sudo groupadd grupo_test #Creates a new group
touch comun #Creates a file named "comun"
ls -l comun #Lists permissions for the file "comun"
#-rw-r--r-- 1 codespace codespace 0 Apr 27 13:27 comun
sudo usermod -a -G grupo_test luna #Adds owner to "grupo_test",  "luna"
sudo chgrp grupo_test comun #Changes group in comun for "grupo_test"
ls -l comun #Lists permissions for the file "comun"
#-rw-r--r-- 1 codespace grupo_test 0 Apr 27 13:27 comun
sudo chown luna:grupo_test mi_archivo #Changes the owner of the file "mi archivo" for the user luna and it`s group
ls -l mi_archivo #Lists permissions for the file mi_archivo