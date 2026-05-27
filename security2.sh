#View the actual principal group
id
id -gn #Only the name of the principal group
#Create a file and view which groups inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#The group is the principal group of the user

#View the actual group
echo "Grupo actual: $(id -gn)"
#Create file before using newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt
#Change to group 'desarrolladores'
newgrp desarrolladores
#Verify that the active group changed
id -gn
echo "Nuevo grupo activo: $(id -gn)"
#Create file inside the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt
#The group now is 'desarrolladores'
#Create directory
mkdir -p ~/proyecto_dev/src
# proyecto_dev/ has the group 'desarrolladores'
#Exit the subshell of newgrp
exit
#Verify that we're back at the original group
id -gn
echo "Grupo restaurado: $(id -gn)"
#Compare the 2 files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt
#newgrp creates a subshell - this is demonstrable
echo "PID del shell actual: $$"
newgrp desarrolladores
echo "PID dentro de newgrp: $$"
# The PID is diferent - is a son's process

#Create a group with a password
groupadd grupo_restringido
gpasswd grupo_restringido
#The sistem will ask a password for the group
#A user that's not from the group can join temporarly if it knows the password
newgrp grupo_restringido
#The sistem will ask the password for the group
#If the password is correct, it will join temporarly
id -gn
exit #When exit, losses the temporal membership