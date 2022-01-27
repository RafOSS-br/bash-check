#!/bin/bash

echo "Localizando arquivos com permissão SUID BIT..."
find / -perm -4000 2> /dev/null > list.suid
cat list.suid
echo "Deseja remover o SUID BIT dos arquivos? (S/N)"
read ESCOLHA

case $ESCOLHA in
S | s)chmod -Rv -s / 2> /dev/null
echo "Permissoes de SUID BIT removidas com sucesso!"
sleep 3
exit
;;
N | n)
exit
;;
*)
echo "Opcao invalida"
sleep 3
exit
;;
esac
