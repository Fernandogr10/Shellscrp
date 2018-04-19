#!/bin/bash
nmap -sP 192.168.9.1/24 > IP.txt

cat IP.txt | grep MAC > MAC.txt
cat IP.txt | grep 192| cut -d " " -f5 > ip.txt

LINHAS=$(cat ip.txt | wc -l)
for i in $(seq "1" "$LINHAS")
do
   sed -n "$i p" ip.txt 
    
   sed -n "$i p" MAC.txt 
    sleep 1
done

touch ipmac2.txt
for i in $(seq "1" "$LINHAS")
do
    
    nmap -O $(sed -n "$i p" ip.txt) >> ipmac2.txt 
    sleep 1
done

ssmtp fernandogiarola97@gmail.com < ipmac2.txt
ssmtp fernandogiarola97@gmail.com < ipmac.txt


