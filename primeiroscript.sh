#!/bin/bash

clear

echo "==== Script==="
echo ""
date
echo "=============================="
echo "Listagem de usuarios"
sort  | cut -d "-" -f2 | nl > usuariosID.txt
cat usuariosID.txt

