#!/usr/bin/env bash

Nombre=$1
Apellido=$2

date +"%d-%m-%Y" > output.txt

echo "$Nombre $Apellido" >> output.txt

cp output.txt backup.txt
cat output.txt