#!/bin/bash

#=========================================================================================
#  INSTALADOR DE DEPENDENCIAS PARA PRETTY BASH
#  BY DJXS4N 
#  Y SUS GANAS DE APOYAR A QUE LINUX SEA MAS 
#  WONITO
#=========================================================================================

#======================
#       Colores       |
#======================
verde='\033[0;32m'
azul='\033[0;34m'
amarillo='\033[1;33m'
rojo='\033[1;31m'
nc='\033[0m'

#========================
#       BIENVENIDA      |
#========================

echo -e "${verde}================================================================${nc}"
echo -e "${azul}
⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣼⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣸⣿⣿⣷⣤⣴⣦⣀⣠⣶⡶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣄⡀⠀⣼⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠘⣿⣿⣿⣿⣿⣿⣿⡾⢛⠋⡛⠻⣿⣿⣿⣿⣧⣴⣶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢸⣿⣿⣿⣿⣽⡏⠰⡈⢆⢡⣷⢀⠻⣿⣿⣿⣿⣇⡀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢻⣿⣿⣿⣻⣿⠄⢣⠘⡄⢺⡏⢄⢣⡌⠻⣿⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣷⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣀⣸⣿⣿⣿⣿⣿⡏⢄⠣⢌⣹⠇⡌⣼⢇⠱⡈⠿⣿⣿⣿⡿⠿⠛⠛⠛⠛⠛⠛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠹⢿⣿⣿⣿⣷⣿⣿⣦⠑⣂⡿⠰⡐⡿⢈⠆⡑⢢⢙⡿⢉⠐⡠⠑⣈⠂⠥⠘⡀⢃⠰⠀⡌⠙⠯⣉⢩⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠹⣿⣿⣿⣽⣿⣷⣜⠏⡰⢱⡟⡠⢊⠔⣡⡿⢁⠂⡡⠄⢡⠠⠌⢠⠁⠒⡈⠄⡡⢀⠃⠤⣹⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⣻⣿⣿⣿⣿⣿⣷⣤⠹⢇⠰⡁⢎⣾⠁⠂⡔⠠⠘⡀⢂⠌⠄⠌⠡⡐⢈⡐⠄⢊⣼⣿⣿⣿⣿⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠙⠛⠛⢻⣿⣿⣯⣿⣿⣷⣌⠢⠑⢬⡇⠌⠡⠠⠑⢂⢁⢢⡈⠌⡐⠡⠠⢁⡐⠈⢼⣿⣿⣿⣿⡿⢁⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⣻⣿⣿⣿⣿⣿⣧⣍⢾⠃⠌⢂⡁⢎⣶⣿⣯⣭⡘⠰⡡⢁⠂⠤⢉⠈⠿⣿⣿⠟⢀⠂⠄⠛⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⡙⢹⣿⣿⣿⣿⣿⣿⠈⠔⠂⢤⣿⣿⣿⣿⣿⣅⠀⠹⠄⡘⢀⢂⠡⠂⢄⠠⢈⠄⠊⠌⡐⢉⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇⡇⣾⣿⣿⡿⣿⣿⣿⡈⠄⢃⠘⣿⣿⣿⣿⣿⣿⠀⢠⠃⠄⠃⠄⡂⢉⠄⢂⠡⢈⠌⡐⢈⠄⡘⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⣓⡘⠿⣿⢷⠙⠛⣻⠡⢈⠄⢊⡘⢿⢿⠿⠟⠃⢠⠞⣨⠐⡉⡐⢈⠤⠈⡄⢂⡁⢂⠌⠄⡂⠔⠘⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⠱⢈⠐⠂⢾⣁⣂⣽⣆⠂⣌⣼⠇⠠⢉⠐⡀⠉⠤⢈⠳⠇⡐⠠⢁⠂⡡⠐⡠⠐⠂⠌⡐⠐⡨⠐⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠂⠌⣁⠂⡉⢹⣟⣿⣻⡯⠁⠌⢂⡁⠢⢈⢁⠒⠠⠒⡀⠆⣁⠂⠡⠄⡑⠠⠑⣈⠐⡈⠔⠠⠑⢂⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣧⠌⣀⠒⡈⡐⠻⣮⡷⠃⠌⢂⠡⠠⠑⣀⠊⠄⡑⠠⢁⠂⠤⢈⠁⠆⡐⠡⠌⣀⠂⠡⠌⢂⠡⢂⠘⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⣤⠒⠠⠐⠡⣀⠐⡈⠔⡈⠤⠑⡈⠄⠌⡐⢈⡁⢂⠡⠒⡈⠰⠈⢄⡁⠆⠠⠌⠡⣈⠐⡐⡈⠌⣻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡈⠅⠒⡀⢂⠁⠆⠰⠀⡅⠂⠌⠒⡈⠄⠰⠈⢄⠡⠐⠡⠌⢠⠐⡈⢡⠈⠔⡀⠒⢠⠐⡈⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠠⢁⠂⢿⡆⠌⡁⢺⠇⡁⢊⠐⣄⠉⠄⠃⡄⠊⠌⡐⠌⡀⠆⡁⢂⠌⡐⠠⠉⠄⢂⠁⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠘⣧⠒⡈⠄⢶⢀⠡⡞⡐⠠⢁⣞⠂⢌⠘⢠⠐⣡⡬⠴⢒⠃⡐⡈⠄⢂⠌⠡⠘⡈⠄⢊⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠹⣧⠀⢀⣤⠾⢷⡐⡈⢼⡆⢸⡇⠡⢘⣼⢳⡿⣦⠈⣤⠿⢁⢂⠁⠆⡈⠔⠠⢁⠊⠄⡡⠡⢐⠈⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⢃⢹⡷⠋⢄⠂⠜⠹⢶⠾⢁⠚⢿⡴⠟⢡⣿⠓⠸⣿⠋⡐⠄⢂⠉⡐⡐⠨⠐⠡⡈⢄⡛⢁⠂⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢰⠀⡂⠿⠈⢄⡈⢂⡁⢂⠐⠂⡌⠠⠐⡈⠴⣿⢀⠡⠘⣆⠰⢈⠂⢡⠐⣀⠃⠡⢒⡼⠋⡐⠈⣴⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠆⡁⢂⠡⢂⠐⡠⠐⡈⠄⠃⡄⠡⢁⠂⢼⣿⠀⠂⡅⢂⡐⠂⠌⢤⣒⠠⠬⠓⡉⠄⢒⣠⡿⠛⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠷⠶⠶⢧⠶⡶⢶⠶⡷⢶⠾⡶⢶⠷⡶⠾⠼⢿⣠⣁⣐⣠⣀⣉⣒⣰⣂⣦⣥⣖⣴⠮⠿⠳⠶⠾⠴⠿⠿⠿⠳⠶⣦⣀⠀⠀⠀⠀⠀⠀⡀⠂
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣦⣶⣼⡟⠃⠀⠀⠀⠀⠀⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠀${nc}"
echo -e "${amarillo}                 instalador de PrettyBash" 
echo -e "${verde}================================================================${nc}"

#================================
#       VALIDACIONES Y PERMISOS |
#================================

echo -e "${verde}[1/nose]${nc}"
echo -e "${amarillo} Verificacion de autorizacion...${nc}"
echo -ne "${azul}¿Deseas instalar las dependencias necesarias? (s/n): ${nc}"
read -r respuesta
sleep 1

if [[ ! "$respuesta" =~ [SsyY]$ ]]; then
  echo -e "${verde}Instalacion cancelada...${nc}"
  echo -e "${amarillo}!Adios¡  Y(˶˃ ᵕ ˂˶)Y ${nc}"
  exit 
fi

echo -e "${azul} Verificando Permisos...${nc}"
sleep 1

if [ "$EUID" -ne 0 ]; then 
  echo -e "${verde} Se requiere Privilegios avanzados, PorFavor, Ingresa tu contraseña: ${nc}"
  sudo -v || exit 1
fi
sleep 1


#=================================================
#       Actualizacion eh instalacion
#       Proximamente lo cocinare
#=================================================



#================================================
#      instalador segun la distro
#                 By Dj
#================================================
PAQUETES=(
  "catimg"
)

esta_instalado() {
  command -v "$1" >/dev/null 2>&1
}

instalar_con_sudo() {
  echo -e "[3/ ] ${amarillo}  Instalando $1 ... ${nc}"
  sudo "$@"
}

echo -e "${azul} Iniciando instalacion de dependencias...${nc}"

for pkg in "${PAQUETES[@]}"; do
  if esta_instalado "$pkg"; then
    echo -e "${verde} [✔] $pkg ya esta instalado ${nc}"
  else 
    if which apt >/dev/null 2>&1; then
      # para los de devian y derivadas
      instalar_con_sudo apt install -y "$pkg"
    elif which pacman >/dev/null 2>&1; then
      # para arch y derivadas
      instalar_con_sudo pacman -S --noconfirm "$pkg"
    elif which dnf >/dev/null 2>&1; then
      # para fedora y derivadas
      instalar_con_sudo dnf install -y "$pkg"
    elif which yum >/dev/null 2>&1; then
      # centos y variedad
      instalar_con_sudo yum install -y  "$pkg"
    elif which zypper >/dev/null 2>&1; then
      # para opensuse y derivadas
      instalar_con_sudo zypper install -y "$pkg"  
    elif which emerge >/dev/null 2>&1; then
      # para los de gentoo
      instalar_con_sudo emerge --ask=n "$pkg"
    else
      echo -e "${rojo} No se encontro ningun gestor de paquetes compatibles en el PATH${nc}"
    fi
  fi
done
sleep 1


echo -e "${verde}==================================================${nc}"
echo -e "${azul}        !Dependencias Instaladas¡ ${nc}"
echo -e "${verde}==================================================${nc}"
sleep 1
echo -e "${amarillo} Integrando a la terminal...${nc}"
sleep 1

#============================================
#       CONFIG SEGUN QUE SHELL HAYA         |
#============================================

if [ -f "$HOME/.zshrc" ]; then
  CONF_FILE="$HOME/.zshrc"
  SHELL_NAME="Zsh"
  echo -e "${azul} Se detecto $SHELL_NAME en $CONF_FILE ${nc}"
elif [ -f "$HOME/.bashrc" ]; then
  CONF_FILE="$HOME/.bashrc"
  SHELL_NAME="Bash"
  echo -e "${azul} Se detecto $SHELL_NAME en $CONF_FILE ${nc}"
else
  echo -e "${rojo} No se encontro archivo de configuracion (.bashrc o .zshrc) ${nc}"
  exit 1
fi

#============================================
#       IMPLEMENTACION DEL SCRIPT           |
#============================================

#cat /home/djxs4n/Documentos/Programacion/PrettyBash/PrettyBash.sh  >> /home/djxs4n/Documentos/Programacion/PrettyBash/zshrc

ORIGEN="$(dirname "$0")"
DESTINO="$HOME/.config/prettybash"

mkdir $DESTINO


if [ -d "$ORIGEN" ]; then
  cp -rf "$ORIGEN"/* "$DESTINO/"
  echo -e "${verde} Archivos del widget copados a $DESTINO ${nc}"
else
  echo -e "${amarillo} Aviso: No se encontro la carpeta de origen $ORIGEN para copiar ${nc}"
fi

#===============================================
#     APPEND DE PRETYBASH SIN DUPLICADO        |
#===============================================
LINEA_WIDGET="source $DESTINO/PrettyBash.sh"

if ! grep -q "$LINEA_WIDGET" "$CONF_FILE"; then
  echo -e "\n# PrettyBash Integration\n$LINEA_WIDGET" >> "$CONF_FILE"
  echo -e "${verde} !Integracion comlpetada en tu $SHELL_NAME ! ${nc}"
else 
  echo -e "${azul} El widget ya estaba integrado en tu $SHELL_NAME ${nc}"
fi

sleep 1

echo -e "${verde}==================================================${nc}"
echo -e "${azul}   Instalación de PrettyBash Finalizada   ${nc}"
echo -e "${verde}==================================================${nc}"



