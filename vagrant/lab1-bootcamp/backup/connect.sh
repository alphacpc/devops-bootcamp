#Étape 1: Génération des clés SSH (si nécessaire)
ssh-keygen -t rsa
ssh-copy-id utilisateur@adresse_distante




#Étape 2: Création du script de sauvegarde et d'envoi
nano backup_and_send.sh
#!/bin/bash

# Dump de la base de données
mysqldump -u utilisateur -p mot_de_passe nom_de_la_base > backup.sql

# Envoi du fichier via scp
scp backup.sql utilisateur@adresse_distante:/chemin/destination





#Étape 3: Configuration de la tâche crontab
chmod +x backup_and_send.sh


crontab -e
0 0 * * * /chemin/vers/backup_and_send.sh
