echo '#!/bin/sh' > hola.sh #Creates a file hola.sh and writes in it "#!/bin/sh" 
#Adds "Hola desde mi primer script" in the file hola.sh
echo 'echo "Hola desde mi primer script" >> hola.sh 
#Calls the file hola.sh
cat hola.sh 
#Executes the file hola.sh
./hola.sh
