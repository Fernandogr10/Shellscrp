#!/bin/bash


echo "+++++++++++++++++++++++++++++++++++"
echo ""

MAQUINA=$(uname -a | cut -d  ' ' -f2)
echo Relatorio da Maquina: $MAQUINA
HORA=$(date +%H:%M:%S)
DIA=$(date +%d/%m/%y)
echo Data/Hora: $HORA  --   $DIA
echo "============================================="
echo ""
ATIVO=$(uptime -s)
echo Maquina ativa desde: $ATIVO
echo ""
KERNEL=$(uname -v | cut  -d ' ' -f1)
echo Versao do Kernel: $KERNEL
echo ""
echo CPUs
CORE=$(cat /proc/cpuinfo | grep -e "cpu cores" | head -n1 | cut -d ':' -f2)
echo Quantidade de CPUs/Cores: $CORE
echo ""
MODELO=$(cat /proc/cpuinfo | grep -e "model name" | head -n1 | cut -d ':' -f2)
echo Modelo da CPU: $MODELO
echo ""
echo Partiçoes:
df -h

