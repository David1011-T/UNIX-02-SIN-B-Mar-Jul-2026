sudo apt update #This command gets all the updates of the packet list
sudo apt upgrade #This command installs all new versions based on the packet list of the system
sudo apt install parted #This command downloads and installs the app "parted"
sudo parted -l && echo -e "\n--\n" && lsblk -f && echo -e #This command gives info about the disk like partitions, blocks, loops.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" #This command makes a conditional test to verify that the file /sys/firmware/efi exists and if so the test is true.
echo "Esto es un archivo" > archivo.txt #This command creates a file with text: "Esto es un archivo"
stat archivo.txt #This command shows info about the file