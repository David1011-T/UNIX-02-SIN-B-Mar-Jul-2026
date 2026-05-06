id #This command gives the id for the user, the primary group and the others groups
cat /etc/passwd | head -10 #This command calls what´s inside the folder /etc/passwd and gives only the first 10 lines
cat /etc/group | head -10 #This command calls what´s inside the folder /etc/group and gives only the first 10 lines
groups # Shows the groups 
groups $USER #Shows the groups the actual user is in
id -u #User ID
id -g #Principal group ID
id -G #Every group ID
cat /etc/group | grep root #This command calls what's inside the folder /etc/group and filters for the group root
cat /etc/gshadow #This command shows what´s in /etc/gshadow, everything with * has a password
mkdir ~/proyecto_unix/ #Creates a directory called ~/proyecto_unix/
ls -la ~/proyecto_unix/ #Lists all permissions for the foler ~/proyecto_unix/
sudo groupadd desarrolladores #Create simple group
sudo groupadd -g 2000 operaciones #Creates group with specific GID
sudo groupadd -system servicios_web #system group
#Verify that were created
grep "desarrolladores\|operaciones\|servicios_web" /etc/group 
grep -E "desarrolladores\|operaciones|servicios_web" /etc/group
#View principal options
groupadd --help
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs #View the range of GIDs in the system
#The system groups that have less than the minimum user GID
#In Ububntu tipically
#SYS_GID_MIN= 100
#SYS_GID_MAX= 999
#GID_MIN= 1000
#GID_MAX= 60000

#Creates groups with addgroup
#addgroup [options] group_name
sudo addgroup diseno
sudo addgroup --gid 2100 marketing
sudo addgroup --system cache_web
#Verify
grep "diseno\|marketing\|cache_web" /etc/group
#View in which groups is the actual user
groups
id
#Add the user to a group with usermod
sudo usermod -aG desarrolladores $USER
sudo usermod -aG diseno $USER
#Using $USER gave problems because it didn't have anything. We can use root or (whoami)
sudo usermod -aG desarrolladores root
sudo usermod -aG diseno root
#Verify change in /etc/group
grep "desarrolladores\|diseno" /etc/group
#Add user to a group with adduser
sudo adduser root marketing
#Verify actual state
id root
grep root /etc/group
#Create a temporal group for the demo
sudo groupadd grupo_temporal
sudo usermod -aG grupo_temporal root
id root
#Now the ERROR: usermod without -a
sudo usermod -G desarrolladores root #This deletes every secondary groups except desarrolladores
id root #Lost all the other groups