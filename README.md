

Este projeto fornece um script Bash para automatizar o provisionamento de infraestrutura em sistemas Linux. O script cria diretórios, grupos e usuários, define permissões de acesso e limpa o ambiente antes de cada execução, garantindo consistência e repetibilidade.

## Visão Geral

A infraestrutura como código (IaC) é uma prática essencial no DevOps que permite o gerenciamento e provisionamento de ambientes por meio de código, em vez de processos manuais. Este projeto demonstra como implementar IaC utilizando um script Bash para configurar uma infraestrutura de diretórios, grupos e usuários em um ambiente Linux.

## Funcionalidades

- **Limpeza de Ambiente**: Remove diretórios, grupos e usuários criados anteriormente para evitar conflitos.
- **Criação de Diretórios**: Cria os diretórios necessários para diferentes departamentos.
- **Criação de Grupos e Usuários**: Configura grupos de usuários e adiciona usuários a seus respectivos grupos.
- **Definição de Permissões**: Define permissões apropriadas para cada diretório, garantindo segurança e controle de acesso.

## Estrutura do Projeto

- `provisionamento.sh`: O script Bash principal que executa todas as operações de provisionamento.
- `logs/`: Diretório para armazenar logs de execução do script.

## Pré-requisitos

- Sistema operacional Linux.
- Permissões de superusuário (root) para executar o script.
- Ferramenta `openssl` instalada para criptografar senhas.

## Como Usar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/seuusuario/nome-do-repositorio.git
   cd nome-do-repositorio
