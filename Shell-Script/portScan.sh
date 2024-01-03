#!/bin/bash
if [ "$1" == "" ]
then
	echo "PortScan"
	echo "modo de uso: $0 Rede porta"
	echo "Exemplo: $0 192.186.20 80"
else
for ip in {1..254}
do
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" |cut -d " " -f 2 | cut -d "=" -f 2
done
fi
