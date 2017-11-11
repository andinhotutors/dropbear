#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo "Mini script"
echo "Criado por: AndersonTLS"
echo "Meu Telegram: @kroz44"
echo "Telegram Hunter: @kroz44"
echo ""
echo "1)Instalar DropBear"
echo""
echo "2)Remover DropBear"
echo ""
echo "3)Atualizar o Sitema"
echo ""
echo "4)Para Squid"
echo""
echo "5)Limpa Dados Deixado Pelo DropBear "
echo""
echo "6)Corrigir erros"
echo""
echo "7)Sair Do Script"
echo ""
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in 


    1)
      echo "Instalando Aguarde…….”
      apt-get install update 1> /dev/null 2> /dev/null
      apt-get install dropbear -y 1> /dev/null 2> /dev/null
      apt-get install nano 1> /dev/null 2> /dev/null
      rm /etc/default/dropbear 1> /dev/null 2> /dev/null
      cd /root
      wget https://raw.githubusercontent.com/andinhotutors/dropbear/master/dropbear
      mv dropbear /etc/default 1> /dev/null 2> /dev/null
      sleep 5
      
echo "================================================"
;;
    2)
      echo "Aguarde Estamos Removendo…..”
      echo "Digite dropbear Para Remover…..”
      read nome
      apt-get remove --purge $nome
      sleep 5
echo "================================================"
;;
   3)
      echo "Atualizando sistema..."
      apt-get update 1> /dev/null 2> /dev/null
      sleep 5
echo "================================================"
;;
    4)
       echo "Iniciando o processo..."
       service squid3 stop 1> /dev/null 2> /dev/null
       /etc/init.d/squid3 stop 1> /dev/null 2> /dev/null
       sleep 5
echo "================================================"
;;      
     5)  
       echo "Limpando..." 
       apt-get autoremove 1> /dev/null 2> /dev/null
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
