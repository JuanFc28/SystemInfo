#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

tput civis
echo -e "\n${purpleColour}----------Informacion de la maquina----------${endColour}\n"
sleep 1


echo -e "${yellowColour}[+]${endColour}${blueColour}Sistema operativo${endColour} --> ${redColour}$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '=' -f 2 | tr '"' ' ')${endColour}\n"

echo -e "${yellowColour}[+]${endColour}${blueColour}Version${endColour} --> ${redColour}$(cat /etc/os-release | head -n 4 | tail -n 1 | tr '"' ' ' | cut -d '=' -f 2)${endColour}\n"

echo -e "${yellowColour}[+]${endColour}${blueColour}Arquitectura del sistema${endColour} --> ${redColour}$(uname -m)${endColour}\n"

echo -e "${yellowColour}[+]${endColour}${blueColour}Espacio disponible en disco${endColour} --> ${redColour}$(df -h | grep "/dev/sda1" | awk '{print$4}') disponibles${endColour}\n"

echo -e "${yellowColour}[+]${endColour}${blueColour}Direccion IP privada -->${endColour} ${redColour}$(ip a | grep eth0 | tail -n 1 | awk '{print $2}' | awk '{print $1}' FS="/")${endColour}\n"

tput cnorm