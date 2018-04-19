#!/bin/bash
#####################################################

#Nome do Script    : Exemplo For
#Descrição         : Primeiro Exemplo
#Args              : ./for.sh
#Autor             : Fernando Giarola
#Email             : fernandogiarola97@gmail.com
#Data de alteração : 22/03


#####################################################

#clear
#read -p "Informe o inicio da sequencia:" INICIO
#read -p "Informe o final da sequencia:" FINAL

#INICIO= $1
#FINAL= $2
#for i in $(seq "$1" "$2")
#do
   # echo "Exibindo o valor $i"
   # sleep 1
#done

############################################################

clear
#read -p "Informe o inicio da sequencia:" INICIO
#read -p "Informe o final da sequencia:" FINAL

#INICIO= $1
#FINAL= $2

for i in $(seq "$1" "$2")
do 
    echo "Criando Pastas $i"
    mkdir "Pasta $i"
    sleep 1
done

