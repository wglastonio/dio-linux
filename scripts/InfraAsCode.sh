#!/bin/bash

echo ""
echo "### Iniciando configuração ###"
echo ""

echo "--> Criando diretórios..."
mkdir /publico
echo "/publico criado"
mkdir /adm
echo "/adm criado"
mkdir /ven
echo "/ven criado"
mkdir /sec
echo "/sec criado"
echo ""

echo "--> Criando grupos de usuários..."
groupadd GRP_ADM
echo "GRP_ADM criado"
groupadd GRP_VEN
echo "GRP_VEN criado"
groupadd GRP_SEC
echo "GRP_SEC criado"
echo ""

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p Carlos123 -G GRP_ADM
echo "Usuário carlos criado"
useradd maria -m -s /bin/bash -p Maria123 -G GRP_ADM
echo "Usuário maria criado"
useradd joao -m -s /bin/bash -p Joao1234 -G GRP_ADM
echo "Usuário joao criado"

useradd debora -m -s /bin/bash -p Debora123 -G GRP_VEN
echo "Usuário debora criado"
useradd sebastiana -m -s /bin/bash -p Sebastiana123 -G GRP_VEN
echo "Usuário sebastiana criado"
useradd roberto -m -s /bin/bash -p Roberto123 -G GRP_VEN
echo "Usuário roberto criado"

useradd josefina -m -s /bin/bash -p Josefina123 -G GRP_SEC
echo "Usuário josefina criado"
useradd amanda -m -s /bin/bash -p Amanda123 -G GRP_SEC
echo "Usuário amanda criado"
useradd rogerio -m -s /bin/bash -p Rogerio123 -G GRP_SEC
echo "Usuário rogerio criado"
echo ""

echo "Modificando permissões dos diretórios...."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
echo "/adm modificado"
chmod 770 /ven
echo "/ven modificado"
chmod 770 /sec
echo "/sec modificado"
chmod 777 /publico
echo "/publico modificado"
echo ""

echo "### Fim da configuração ###"