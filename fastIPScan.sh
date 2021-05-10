#!/bin/bash

#
#Colores
#
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#
#Dice Saliendo...
#
function salir() {
	echo -e "\n${redColour}[-]${endColour} Saliendo...\n"
}

#
#Cuando sale del programa salta la funcion saliendo
#
trap "salir" EXIT

#
#Rango de IP's a escanear
#
clear
read -p "[*] Introduce el segmento de IP's a scanear (Ejemplo: 192.168.1):  " ip
if [ $ip != "" ]
then
	clear
    echo -e "${yellowColour}[*]${endColour} Escaneando ${redColour}$ip.1/24${endColour}\n"
	echo -e "${turquoiseColour}----------------------------------------${endColour}"
	is_alive_ping()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo -e "${greenColour}[+]${endColour} El equipo: ${redColour}$i${endColour} esta activo."
}

for i in $ip.{1..254}
do
is_alive_ping $i & disown
done
sleep 2
echo -e "${turquoiseColour}----------------------------------------${endColour}"

#
#Cierra la pregunta de las IP
#
else
    echo -e "${redColour}[-]${endColour} No me has dicho ningun segmento de IP's"
fi
