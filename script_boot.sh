#Changes the directory to home
cd
#Changes the directory to home
cd /home/codespace
#Changes the directory to home
cd ~
#Changes the directory to home
cd $HOME 
#Creates a route named "proyecto"
mkdir proyecto
#Changes the directory to the new route "proyecto"
cd proyecto/
#Shows info about the file were on like the inode, characteristics and hidden files
ls -lai
#total 12
#925549 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:37 .
#918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:37 ..
#Shows last access, modify, change and birth of the file. And blocks where the file is. Shows if the disk is virtual or physical and in which partition is it
stat .
#Creates 2 new routes in the directory /tmp/prueba
mkdir -p /tmp/prueba/sub1 /tmp/prueba/sbu2
#Shows info about the the new file in route /tmp/prueba
stat /tmp/prueba
#Shows a manual for the command that is next to it
man 