#!/bin/bash

echo "Criando Diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios"
useradd carlos -m -c "Usuario Carlos" -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -c "Usuario Maria" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "Usuario Joao" -s /bin/bash -p $(openssl passwd Senha123)
useradd debora -m -c "Usuario Debora" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Usuario Sebastiana" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Usuario Roberto" -s /bin/bash -p $(openssl passwd Senha123)
useradd josefina -m -c "Usuario Josefina" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Usuario Amanda" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Usuario Rogerio" -s /bin/bash -p $(openssl passwd Senha123)

echo "Agrupando Diretorios"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Agrupando Usuarios"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Permissoes Diretorios"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Script Concluido"