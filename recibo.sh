#!/bin/bash

# necessário editar variáveis de ambiente para poder usar este script

file_target=$(date "+%F")_recibo.txt
touch $file_target

read -p 'valor (incluindo centavos): ' valor
read -p 'nome do pagador: ' pagador

cidade=$CIDADE
telefone=$TELEFONE
referente=$REFERENTE
remissor="Paulo Roberto Soares da Silva Alves"
cpf=$CPF

conta=$CONTA
agencia=$AGENCIA
data=$(date "+%A, %d de %B de %Y")
banco=$BANCO

printf "Recebi de $pagador a importância de R\$$valor referente a $referente.\n" > $file_target
printf "Para maior clareza firmo o presente recibo para que produza os seus efeitos, dando plena,\n" >> $file_target
printf "rasa e irrevogável quitação, pelo valor recebido.\n" >> $file_target
printf "O pagamento foi efetuado através do depósito/Transferência bancária realizado em $data\n" >> $file_target
printf" na conta: $conta, agência: $agencia, banco: $banco.\nFavorecido: $remissor" >> $file_target

printf "\n\n" >> $file_target
printf "$cidade, $data\n\n" >> $file_target

printf "$remissor\n" >> $file_target
printf "$cpf\n" >> $file_target
printf "$telefone\n" >> $file_target


gpg --clearsign $file_target

