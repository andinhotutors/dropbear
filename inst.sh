#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "DropBear @kroz44" ; tput sgr0
echo "================================================"
echo "================================================"
echo "Mini script"
echo "Criado por: AndersonTLS"
echo "Meu Telegram: @kroz44"
echo "Telegram: @kroz44"
echo ""
echo -e "1)\033[01;34m•====> (INSTALAR DROPBEAR) \033[01;34m"
echo""
echo -e "2)\033[01;33m•====> (REMOVER DROPBEAR)\033[0m"
echo""
echo -e "3)\033[01;33m•====> (ATUALIZAR SITEMA)\033[0m"
echo ""
echo -e "4)\033[01;33m•====> (PARA SQUID)\033[0m"
echo""
echo -e "5)\033[01;33m•====> (LIMPA DADOS DEIXADOS)\033[0m"
echo""
echo -e "6)\033[01;33m•====> (CORRIGIR ERROS)\033[0m"
echo""
echo -e "7)\033[01;33m•====> (AIR DI SCRIPT)\033[0m"
echo ""
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in 


    1)
      echo "Instalando Aguarde....”
      apt-get install update
      apt-get install dropbear -y
      apt-get install nano
      rm /etc/default/dropbear
      cd /root
      wget https://raw.githubusercontent.com/andinhotutors/dropbear/master/dropbear
      mv dropbear /etc/default
      sleep 5
      
echo "================================================"
;;
    2)
      echo "Aguarde Estamos Removendo...”
      echo "Digite dropbear Para Remover...”
      read nome
      apt-get remove --purge $nome
      sleep 5
echo "================================================"
;;
   3)
      echo "Atualizando sistema..."
      apt-get update
      sleep 5
echo "================================================"
;;
    4)
       echo "Iniciando o processo..."
       service squid3 stop
       /etc/init.d/squid3 stop
       sleep 5
echo "================================================"
;;      
     5)  
       echo "Limpando..." 
       apt-get autoremove
       sleep 5
echo "================================================"
;;
    6) 
    echo "Reparando..."
    dpkg --configure -a
    sleep 5

echo "================================================"
 ;;     
       7)
         echo "saindo..."
         sleep 5
         clear;
         exit;
echo "================================================"
;;

*)
        echo "Opção inválida!"
esac
done

}
menu
