#!/bin/bash
#source 
DIR="$(dirname "$0")"
echo -e "$DIR" 

IMG_DIR="$DIR/Pretty_Bash/"

#========================
# LA VERSION CON CATIMG |
#========================

if [ -d "$IMG_DIR" ]; then
    # Buscamos la imagen
    FILE=$(find "$IMG_DIR" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | shuf -n 1)

# Si encontró un archivo, lo muestra (bajé el requisito de columnas a 40 para que siempre salga)
    if [ -n "$FILE" ] && [ "$(tput cols)" -ge 40 ]; then
        catimg "$FILE" -w 170 -r 2 
    fi
fi

#======================
# LA VERSION CON JP2A |
#======================

#if [ -d "$IMG_DIR" ]; then
    # Buscamos la imagen
#    FILE=$(find "$IMG_DIR" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | shuf -n 1)

    # Si encontró un archivo, lo muestra (bajé el requisito de columnas a 40 para que siempre salga)
#    if [ -n "$FILE" ] && [ "$(tput cols)" -ge 40 ]; then
#        jp2a --size=70x30 -b "$FILE" --color
#    fi
#fi

#===============================
#    BIENVENIDA AL USUARIO     |
#===============================
#   Colores
verde='\033[0;32m'
azul='\033[0;34m'
amarillo='\033[1;33m'
rojo='\033[1;31m'
nc='\033[0m'


echo -e "${verde} Bienvenido ${azul} $USER ${verde}先生(7>v<)7 ${nc}"


