# estrutura-acesso-linux
DIO Bootcamp trabalho prático de Infraestrutura como Código para automotizar a criação de grupos, usuários e permissões. 

# Script de Provisionamento Linux

Este projeto tem como função automatizar a criação de uma estrutura de usuários, grupos, diretórios e permissões em sistemas Linux, utilizando um script Bash. 

## Pré-requisitos

- Distribuição Linux compatível (Ubuntu, Debian, etc.)
- Acesso root
- Bash instalado

## Funções

- Criação dos diretórios:
  - `/publico`
  - `/adm`
  - `/ven`
  - `/sec`
- Criação dos grupos:
  - `GRP_ADM`
  - `GRP_VEN`
  - `GRP_SEC`
- Criação dos usuários e associação aos grupos:
  - `GRP_ADM`: carlos, maria, joao
  - `GRP_VEN`: debora, sebastiana, roberto
  - `GRP_SEC`: josefina, amanda, rogerio
- Definição de permissões:
  - Diretórios de grupo com acesso exclusivo aos usuários do mesmo grupo
  - Diretório `/publico` com acesso geral
- Expiração da senha no primeiro login
- Limpeza de estrutura anterior (diretórios, usuários e grupos)

## Como executar

```bash
# Clone o repositório
git clone https://github.com/bruno-DAM/estrutura-acesso-linux
cd estrutura-acesso-linux

# Torne o script executável
chmod +x script.sh

# Execute como root
sudo ./script.sh

