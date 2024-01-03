#!/bin/bash

echo "0 deseja pedir um lanche ?"
echo "1 - SIM"
echo "2 - Nao"
read resp
if [ $resp == "1" ]
then
	echo "Escolha um lanche"
	echo "1 - Pao com ovo"
	echo "2 - X-banco"
	echo "3 - X-Tudo"
	echo "4 - X-burguer"
read lan
case $lan in 
"1")
	echo "Voce escolheu pao com ovo"
;;
"2")
	echo "Voce escolheu x-bacon"
;;
"3")
	echo "voce escolheu X-tudo"
;;
"4")
	echo "voce escolheu X-Burguer"

esac
else
	echo "Obrigado, volte sempre"

fi
