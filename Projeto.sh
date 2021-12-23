#!/usr/bin/env bash
clear
TIME=2
echo PROGRAMA DE GERENCIAMENTO 
echo " "
echo "Escolha uma opção para gerir
      
      1 - Iniciar o serviço
      2 - Parar o serviço
      3 - Reiniciar o serviço
      4 - Mostrar status
      0 - Sair do menu"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
        1)
                echo -e "\033[01;32m Iniciando o serviço !\033[01;32m"
                sleep $TIME
                systemctl start top.service
                ;;
        2)
                echo -e "\033[01;31m Parando o serviço !\033[01;31m"
                sleep $TIME
                systemctl stop top.service
                ;;
        3)
                echo -e "\033[01;33m Reiniciando o serviço \033[01;33m"
                sleep $TIME
                systemctl restart top.service
                ;;
        4)
                echo Mostrando  o status
                sleep $TIME
                systemctl status top
                ;;
        0)
                echo Saindo do menu
                sleep $TIME
                exit 0
                ;;
        *)
                echo Opção inválida, digite outra opção!
                sleep $TIME
                exit 0
                ;;
esac