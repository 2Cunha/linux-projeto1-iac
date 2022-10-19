#!/bin/bash

echo "Script para criação de infraestrutura como código."
echo "Criando pastas da infraestrutura..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Setando permissões das pastas..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
criação dos usuários
useradd -g GRP_ADM carlos -s /bin/bash -p $(openssl passwd Senha123)
passwd carlos -e
useradd -g GRP_ADM maria -s /bin/bash -p $(openssl passwd Senha123)
passwd maria -e
useradd -g GRP_ADM joao -s /bin/bash -p $(openssl passwd Senha123)
passwd joao -e
useradd -g GRP_VEN debora -s /bin/bash -p $(openssl passwd Senha123)
passwd debora -e
useradd -g GRP_VEN sebastiana -s /bin/bash -p $(openssl passwd Senha123)
passwd sebastiana -e
useradd -g GRP_VEN roberto -s /bin/bash -p $(openssl passwd Senha123)
passwd roberto -e
useradd -g GRP_SEC josefina -s /bin/bash -p $(openssl passwd Senha123)
passwd josefina -e
useradd -g GRP_SEC amanda -s /bin/bash -p $(openssl passwd Senha123)
passwd amanda -e
useradd -g GRP_SEC rogerio -s /bin/bash -p $(openssl passwd Senha123)
passwd rogerio -e

echo "Infraestrutura criada com sucesso!!!"
