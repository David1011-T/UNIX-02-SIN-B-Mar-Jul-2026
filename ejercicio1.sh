echo '#!/bin/sh' > hola.sh #Creates a file hola.sh and writes in it "#!/bin/sh" 
echo 'echo "Hola desde mi primer script"' >> hola.sh #Adds "Hola desde mi primer script" in the file hola.sh
cat hola.sh #Calls the file hola.sh
./hola.sh #Executes the file hola.sh
ls -l hola.sh #Lists the file hola.sh
chmod +x hola.sh #Changes permission to the file hola.sh
ls -l hola.sh #Lists the file hola.sh
./hola.sh #Executes the file hola.sh
