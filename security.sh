id #This command gives the id for the user, the primary group and the others groups
cat /etc/passwd | head -10 #This command calls what´s inside the folder /etc/passwd and gives only the first 10 lines
cat /etc/group | head -10 #This command calls what´s inside the folder /etc/group and gives only the first 10 lines
groups # Shows the groups 
groups $USER #Shows the groups the actual user is in