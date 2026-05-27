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
