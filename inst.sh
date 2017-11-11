#/bin/bash
echo "================================================"
echo "Mini script"
echo "Criado por: AndersonTLS"
echo "Meu Telegram: @kroz44"
echo "Telegram: @kroz44"
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
