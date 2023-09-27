#1/bin/bash

backup dir=~/Job8/Backup

if [ ! -d "$backup_dir" ]; then 
  mkdir -p "$backup_dir"
fi

timestamp=$(date +"%d-%m-%Y-%H:%M")

connection_count=$(grep -P "systemd-logind.*$utilisateur" /var/log/auth.log | wc -l)

echo "Le nombre de connection est : $connection_count" > "$backup_dir/number_connection-$timestamp.txt"

tar -czf "$backup_dir/number_connection-$timestamp.tar" "$backup_dir/number_connection-$timestamp.txt"

echo "Nombre de connexions de l'utilisateur sauvegardé dans : $backup_dir/number_connection-$timestamp.tar"
