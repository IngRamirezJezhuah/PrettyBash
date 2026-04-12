#!/bin/bash

#===========================================
#  Configuracion de imgenes chulas para bash
#===========================================
PROY_DIR="$(dirname "$0")/wallpaper"

IMG_DIR=""

#LA VERSION CON CATIMG
if [ -d "$IMG_DIR" ]; then
    # Buscamos la imagen
    FILE=$(find "$IMG_DIR" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | shuf -n 1)

    # Si encontró un archivo, lo muestra (bajé el requisito de columnas a 40 para que siempre salga)
    if [ -n "$FILE" ] && [ "$(tput cols)" -ge 40 ]; then
        catimg "$FILE" -w 170 -r 2
    fi
fi

#LA VERSION
