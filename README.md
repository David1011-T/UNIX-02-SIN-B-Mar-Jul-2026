El sistema que vamos a construir tiene tres componentes:

1. **Kernel Linux** - el nucleo del sistema operativo
2. **BusyBox** - proporciona las utilidades basicas de Unix (ls, pwd, vi, etc.) en un solo binario
3. **Syslinux** - el bootloader que carga todo al arrancar

sudo apt update
sudo apt upgrade
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

**¿Para que sirve cada paquete?**

´gcc´, ´make´ - compilacion del jernel y BusyBox
´libncurses-dev´- menus interactivos de configuracion (´menuconfig´)
´flex´,´bison´,´bc´ - requeridos por el proceso de build del kernel
´cpio´ - para crear el initramfs
´libekf-dev´, ´libssl-dev´ - dependencias del kernel
´syslinux´ - el bootloader
´dosfstools´ - para crear el filesystem FAT
´qemu-system-x86´ - para probar la imagen sin necesidad de hardware real

git clone --depth 1 https://github.com/torvalds/linux.git
cd linux
make menuconfig
make -j 2
sudo mkdir /boot-files
sudo cp arch/x86/boot/bzImage /boot-files/
cd ..
git clone --depth 1 https://git.busybox.net/busybox
cd busybox
make menuconfig
make -j 2
sudo mkdir /boot-files/initramfs
sudo make CONFIG_PREFIX=/boot-files/initramfs install
cd /boot-files/initramfs
sudo vi init
#!/bin/sh
/bin/sh
sudo rm linuxrc
sudo chmod +x init
sudo bash -c 'find . | cpio -o -H newc > ../init.cpio' 
cd ..
sudo su
dd if=/dev/zero of=boot bs=1M count=50
mkfs -t fat boot
syslinux boot
mkdir m
mount boot m
cp bzImage init.cpio m
umount m
qemu-system-x86_64 -nographic -append "console=ttyS0" \ -kernel bzImage -initrd init.cpio -drive file=boot,format=raw
Ejercicios
1. Verificar el tipo de firmware: Ejecuta [ -d /sys/firmware/efi ] && echo "UEFI" ||
echo "BIOS" tanto en el Codespace como dentro de QEMU. ¿Qué resultado obtienes y por qué?
En codespaces se obtiene UEFI y en QEMU se obtiene BIOS. Esto es porque codespaces utiliza interfaces modernas con UEFI mientras que en QEMU como se lo creo de manera basica se carga con BIOS
2. Inspeccionar la estructura: Dentro de QEMU, ejecuta ls / y compara con la estructura de
directorios que vimos en clase. ¿Qué directorios faltan y por qué?
Faltan /home, /root, /var, /etc, /opt y /boot porque en el sistema operativo creado tiene estrictamente lo necesario para que inicie
3. Explorar BusyBox: Dentro de QEMU, ejecuta ls -la /bin/ y observa que todos los comandos
son enlaces simbólicos al mismo binario. ¿Qué ventaja tiene esto para un sistema embebido?
Ahorra espacio en disco y memoria RAM ya que es un solo programa que sabe como comportarse como muchos otros en uno solo
4. Examinar bloques: En el Codespace, crea un archivo con echo "hola" > test.txt y luego
ejecuta stat test.txt . Identifica el tamaño real vs. los bloques asignados. ¿Hay
fragmentación interna?
Si hay, el tamaño del archivo es de 5 bytes pero se le asigna un bloque completo
5. Analizar particiones: Ejecuta sudo parted -l && echo -e "\n---\n" && lsblk -f
en el Codespace. Identifica qué discos usan GPT vs MBR, y qué filesystems están en uso.
Los discos /dev/sda y /dev/sdb usan GPT y el disco /dev/sdc usa MBR. Hay filesystems ext4 y fat32