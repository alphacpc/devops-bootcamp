#!/bin/bash

# Configuration des variables
DB_USER="alphacpc"
DB_NAME="app"
BACKUP_DIR="/home/vagrant/backup"
DATE=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$DATE.sql"

# Définir le mot de passe PostgreSQL dans une variable d'environnement
export PGPASSWORD="alphacpc"

# Commande de sauvegarde
pg_dump -U $DB_USER -d $DB_NAME -h '192.168.56.11' > $BACKUP_FILE

# Vérifier si la sauvegarde a réussi
if [ $? -eq 0 ]; then
    echo "Sauvegarde de la base de données réussie : $BACKUP_FILE"
else
    echo "Erreur lors de la sauvegarde de la base de données"
fi

# Effacer le mot de passe de l'environnement après la sauvegarde
unset PGPASSWORD
