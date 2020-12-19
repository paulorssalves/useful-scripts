#!/bin/bash

# usado para formatar questionários acadêmicos para criação de instrumentos
# usado no ADT de Rosa Krausz
# possivelmente poderá ser usado na adaptação de novos instrumentos

n=1
LIM=6

while [ $n -le $LIM ] ; do
    while read p ; do
	if [ ${p:0:2} == "${n})" ] ; then
	    echo "$p" 
	fi
    done < adt-autof.org >> adt-col.org
n=$((n+1))
done
