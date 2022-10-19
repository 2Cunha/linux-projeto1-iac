#!/bin/bash
echo "Criando usuarios do sistema..."

useradd guest1 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest1 -e

useradd guest2 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest2 -e

useradd guest3 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest3 -e

echo "Finalizado!!"
