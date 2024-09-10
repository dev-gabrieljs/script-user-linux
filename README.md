

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

### Explicações Adicionais

- **Nome para o Projeto**: O nome escolhido deve refletir o propósito do projeto, ou seja, provisionamento automatizado de infraestrutura com Bash.
- **Descrição**: Uma breve introdução sobre o projeto e sua importância no contexto de IaC.
- **Funcionalidades**: Detalhes sobre o que o script faz e quais problemas ele resolve.
- **Estrutura do Projeto**: Explicação sobre os arquivos importantes e diretórios no repositório.
- **Instruções de Uso**: Passos claros para o usuário clonar, tornar o script executável e rodá-lo.
- **Log de Operações**: Detalhe sobre o log para transparência e depuração.
- **Contribuições e Licença**: Instruções padrão para colaboração e informações de licença.

Espero que essas sugestões atendam às suas necessidades! Se precisar de ajustes, é só avisar.
