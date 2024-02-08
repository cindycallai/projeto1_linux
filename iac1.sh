#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir/ven
mkdir/sec

echo "Criando os Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

useradd carlos -m -s "Carlos Silva" -s /bin/bash  -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd maria -m -s "Maria Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM
useradd joao -m -s "João Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_ADM

useradd debora -m -s "Debora Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd sebastiana -m -s "Sebastiana Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN
useradd roberto -m -s "Roberto Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_VEN

useradd josefina -m -s "Josefina Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd amanda -m -s "Amanda Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC
useradd rogerio -m -s "Rogério Silva" -s /bin/bash -p $(openssl passwd -crypt Senha) -G GRP_SEC

echo "Definido as permissões de diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim!"
