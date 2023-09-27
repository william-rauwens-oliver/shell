#!/bin/bash

csv_file="/mnt/c/Users/gamer/Downloads/JOB09/Shell_Userlist.csv"

create_user_and_assign_permissions() {
    local id="$1"
    local prenom="$2"
    local nom="$3"
    local mdp="$4"
    local role="$5"

    if id "$prenom" &>/dev/null; then
        echo "L'utilisateur $prenom existe déjà."
    else

        sudo useradd -m -p "$(echo "$mdp" | openssl passwd -1 -stdin)" -c "$prenom $nom" "$prenom"
        
        
        if [ "$role" == "Admin" ]; then
            sudo usermod -aG sudo "$prenom"
        fi

        echo "L'utilisateur $prenom a été créé avec le rôle $role."
    fi
}

tail -n +2 "$csv_file" | while IFS=',' read -r id prenom nom mdp role; do
    create_user_and_assign_permissions "$id" "$prenom" "$nom" "$mdp" "$role"
done

