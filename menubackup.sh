#!/bin/bash

echo;echo -n "Escolha uma opcao:
1 - Exibir os locais de rede
2 - Mapear os locais de rede
3 - Efetuar Backup Incrmental
4 - Efetuar Backup Full";echo; read OPC

function locais() {
	echo "Mostrando locais de rede:"; cat /home/egomes/scripts/locais
}

function mapear() {
	echo "Mapeando as unidades de rede:";./mapear_rede
}

function incremental() {
	echo "Realizando Backup Incremental:"; ./bkp_increment
}

function full() {
	echo "Realizando Backup Full:"; ./bkp_full
}
case "$OPC" in
1) locais ;;
2) mapear ;;
3) incremental ;;
4) full ;;
*) echo "Opcao Invalida!!!" ;;
esac
