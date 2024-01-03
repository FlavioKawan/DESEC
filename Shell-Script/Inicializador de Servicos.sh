#!/bin/bash
echo "Digite o Servico a ser iniciado: "
read serv
service $serv restart
echo "Servicos Ativos: "
#ps aux é uma ferramenta para monitorar os processos em execução no seu sistema Linux 
ps aux | grep $serv
echo "Portas Abertas: "
netstat -nlpt
