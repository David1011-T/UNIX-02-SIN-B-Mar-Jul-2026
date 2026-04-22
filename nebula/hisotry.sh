    1  ls -d nebula/
    2  ls -da nebula/
    3  mkdir bitacoras
    4  rm -r bitacoras/
    5  cd nebula/
    6  mkdir bitacoras
    7  mkdir borradores
    8  git add .
    9  git commit -m "Fix problema 1: estructura de directorios corregida"
   10  mv nebula/cosmos.txt nebula/bitacoras/cosmos.txt
   11  mv cosmos.txt bitacoras/cosmos.txt
   12  mv estrella.bak estrella.conf
   13  git add .
   14  git commit -m "Fix problema 2: archivos movidos y renombrados"
   15  chmod 640 bitacoras/cosmos.txt
   16  git add .
   17  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   18  chmod u+x galaxia.sh
   19  ls galaxia.sh
   20  ls -l galaxia.sh
   21  chmod o+w estrella.conf
   22  ls -l estrella.conf
   23  @David1011-T ➜ /workspaces/UNIX-02-SIN-B-Mar-Jul-2026/nebula (correcion_prueba) $ git add .
   24  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   25  git add .
   26  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   27  ls -l galaxia.sh
   28  chmod u+s galaxia.sh
   29  ls -l galaxia.sh
   30  git add .
   31  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   32  ls -ld /tmp/nebula_zone
   33  mkdir /tmp/nebula_zone
   34  ls -ld /tmp/nebula_zone
   35  chmod +t /tmp/nebula_zone
   36  ls -ld /tmp/nebula_zone
   37  git add .
   38  git commit -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   39  sudo apt update
   40  sudo apt upgrade
   41  gpg --full-generate-key
   42  gpg --encrypt --recipient aurora@nebula.lab --output bitacoras/cosmos.txt-gpg bitacoras/cosmos.txt
   43  gpg --list-keys
   44  git add .
   45  git commit -m "Fix problema 7: llave GPG generada y cosmos.txt cifrado"
   46  gpg --clearsign --output nebula/estrella.conf.asc estrella.conf
   47  gpg --clearsign --output estrella.conf.asc estrella.conf
   48  gpg --verify galaxia.sh.sig galaxia.sh
   49  gpg --detach-sign galaxia.sh.sig galaxia.sh
   50  gpg --detach-sign --output nebula/galaxia.sh.sig galaxia.sh
   51  gpg --detach-sign --output 'galaxia.sh.sig galaxia.sh
   52  qqq
   53  history
   54  gpg --detach-sign --output galaxia.sh.sig galaxia.sh
   55  gpg --verify galaxia.sh.sig galaxia.sh
   56  gpg --detach-sign --output galaxia.sh.sig galaxia.sh
   57  cd nebula/
   58  gpg --detach-sign --output galaxia.sh.sig galaxia.sh
   59  gpg --verify galaxia.sh.sig galaxia.sh
   60  git add .
   61  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   62  history