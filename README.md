# Scripts de automação

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


1.**Torne o script executável**:
 ```bash

sudo chmod +x provisionamento.sh
````
Execute o script com permissões de superusuário:
```bash

sudo ./provisionamento.sh
````

## Definições

- **Excluir diretórios, arquivos, grupos e usuários criados anteriormente**: Antes de criar novos diretórios, arquivos, grupos e usuários, o script deve remover todos os que foram criados anteriormente, garantindo um ambiente limpo.

- **Todo provisionamento deve ser feito em um arquivo do tipo Bash Script**: O provisionamento da infraestrutura deve ser realizado através de um único script Bash, automatizando todas as tarefas.

- **O dono de todos os diretórios criados será o usuário root**: Após a criação, todos os diretórios devem ter o usuário `root` como proprietário para assegurar o controle administrativo.

- **Todos os usuários terão permissão total dentro do diretório publico**: O diretório `/publico` deve ter permissões abertas (777), permitindo que todos os usuários possam ler, escrever e executar arquivos neste diretório.

- **Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório**: Cada grupo de usuários deve ter permissões totais (770) dentro do diretório correspondente ao seu grupo, permitindo que apenas usuários do grupo tenham acesso completo.

- **Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem**: Deve-se configurar permissões de forma que usuários de outros grupos não possam acessar, ler, modificar ou executar arquivos em diretórios de departamentos aos quais não pertencem.



