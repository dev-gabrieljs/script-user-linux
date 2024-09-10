#!/bin/bash

# Configurações de log
LOG_FILE="/var/log/provisionamento.log"
exec > >(tee -i $LOG_FILE) 2>&1

# Função para exibir mensagens
function print_msg() {
    echo "-------------------------"
    echo "$1"
    echo "-------------------------"
}

# Arrays de dados
DIRS=("/publico" "/adm" "/ven" "/sec")
GROUPS=("GRP_ADM" "GRP_VEN" "GRP_SEC")
USERS_ADM=("carlos" "maria" "joao")
USERS_VEN=("debora" "sebastiana" "roberto")
USERS_SEC=("josefina" "amanda" "rogerio")

# Função para limpar ambiente anterior
clean_up() {
    print_msg "Limpando ambiente anterior..."

    # Remover usuários
    ALL_USERS=("${USERS_ADM[@]}" "${USERS_VEN[@]}" "${USERS_SEC[@]}")
    for user in "${ALL_USERS[@]}"; do
        if id "$user" &>/dev/null; then
            userdel -r "$user"
            echo "Usuário $user removido."
        fi
    done

    # Remover grupos
    for group in "${GROUPS[@]}"; do
        if getent group "$group" &>/dev/null; then
            groupdel "$group"
            echo "Grupo $group removido."
        fi
    done

    # Remover diretórios
    for dir in "${DIRS[@]}"; do
        if [ -d "$dir" ]; then
            rm -rf "$dir"
            echo "Diretório $dir removido."
        fi
    done
}

# Função para criar diretórios
create_directories() {
    print_msg "Criando diretórios..."

    for dir in "${DIRS[@]}"; do
        if [ ! -d "$dir" ]; then
            mkdir "$dir"
            echo "Diretório $dir criado."
        fi
    done
}

# Função para criar grupos
create_groups() {
    print_msg "Criando grupos..."

    for group in "${GROUPS[@]}"; do
        if ! getent group "$group" &>/dev/null; then
            groupadd "$group"
            echo "Grupo $group criado."
        fi
    done
}

# Função para criar usuários e atribuí-los a grupos
create_users() {
    print_msg "Criando usuários..."

    for user in "${USERS_ADM[@]}"; do
        useradd "$user" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
        echo "Usuário $user criado e adicionado ao grupo GRP_ADM."
    done

    for user in "${USERS_VEN[@]}"; do
        useradd "$user" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
        echo "Usuário $user criado e adicionado ao grupo GRP_VEN."
    done

    for user in "${USERS_SEC[@]}"; do
        useradd "$user" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
        echo "Usuário $user criado e adicionado ao grupo GRP_SEC."
    done
}

# Função para definir permissões de diretórios
set_permissions() {
    print_msg "Configurando permissões de diretórios..."

    chown root:GRP_ADM /adm
    chown root:GRP_VEN /ven
    chown root:GRP_SEC /sec

    chmod 770 /adm
    chmod 770 /ven
    chmod 770 /sec
    chmod 777 /publico

    echo "Permissões configuradas."
}

# Executa as funções de forma organizada
main() {
    clean_up
    create_directories
    create_groups
    create_users
    set_permissions

    print_msg "Provisionamento concluído com sucesso!"
}

# Chamada principal
main
