#!/bin/bash

echo "Removendo estrutura anterior..."

# Remove diretórios 
rm -rf /publico /adm /ven /sec

# Remove usuários (com diretórios home e ignorando erros)
for usuario in carlos maria joao debora sebastiana roberto josefina amanda rogerio; do
    userdel -r $usuario 2>/dev/null
done

# Remove grupos (ignora erros)
for grupo in GRP_ADM GRP_VEN GRP_SEC; do
    groupdel $grupo 2>/dev/null
done

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos..."

# Usuários do grupo ADM
useradd carlos -c "Carlos - GRP_ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria - GRP_ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João - GRP_ADM" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

# Usuários do grupo VEN
useradd debora -c "Debora - GRP_VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana - GRP_VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto - GRP_VEN" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

# Usuários do grupo SEC
useradd josefina -c "Josefina - GRP_SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda - GRP_SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio - GRP_SEC" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "Definindo permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado com sucesso."
