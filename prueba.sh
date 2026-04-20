 1  ls nebula/
    2  ls -a nebula/
    3  ls nebula/registros
    4  ls -d nebula/
    5  ls -la nebula/
    6  ls -d nebula/registros
    7  ls -d nebula/nombre_incorrecto
    8  cd nebula/
    9  man mkdir
   10  mkdir registros
   11  rf registros/
   12  mkdir -rf registros/
   13  mkdir --rf registros/
   14  man mkdir
   15  rm -r registros/
   16  ls -d registros/
   17  mkdir bitacoras
   18  mkdir borradores
   19  ls -d
   20  ls nebula/
   21  ls -a
   22  git add.
   23  cd ~
   24  git .add
   25  git add.
   26  git add .
   27  cd home
   28  git add .
   29  git commit -m "Fix problema 1: estructura de directorios corregida"
   30  cd nebula/
   31  git mv registros bitacoras
   32  ls -la nebula/
   33  git mv registros bitacoras
   34  mv nebula/registros nebula/bitacoras
   35  git add .
   36  git commit -m "Fix problema 1: estructura de directorios corregida"
   37  mv nebula/cosmos.txt nebula/bitacoras/cosmos.txt
   38  mv nebula/estrella.bak nebula/estrella.conf
   39  git add .
   40  git commit -m "Fix problema 2: archivos movidos y renombrados"
   41  man chomd
   42  man chmod
   43  chmod 640 nebula/bitacoras/cosmos.txt
   44  ls -l nebula/bitacoras/cosmos.txt
   45  git add .
   46  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   47  chmod u+x nebula/galaxia.sh
   48  chmod o+w nebula/estrella.conf
   49  ls -l nebula/galaxia.sh
   50  git add .
   51  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   52  chmod u+s nebula/galaxia.sh
   53  ls -l nebula/galaxia.sh
   54  git add .
   55  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   56  ls -ld /tmp/nebula_zone
   57  cd /tmp/nebula_zone
   58  mkdir /tmp/nebula_zone
   59  ls -ld /tmp/nebula_zone
   60  chmod +t /tmp/nebula_zone
   61  ls -ld /tmp/nebula_zone
   62  git add .
   63  git commit -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   64  gpg --full-generate-keys
   65  gpg --full-generate-key
   66  gpg --encrypt --recipient aurora@nebula.lab --output nebula/bitacoras/cosmos.txt-gpg nebula/bitacoras/cosmos.txt
   67  git add .
   68  git commit -m "Fix problema 7: llave GPG generada y cosmos.txt cifrado"
   69  history