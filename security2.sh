#View the actual principal group
id
id -gn #Only the name of the principal group
#Create a file and view which groups inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
#The group is the principal group of the user