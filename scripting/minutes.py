import datetime

# Obtenez la date et l'heure actuelles
now = datetime.datetime.now()
date_time = now.strftime("%Y-%m-%d_%H-%M-%S")

# Créez le nom du fichier en utilisant la date et l'heure
file_name = f"output_{date_time}.txt"

# Ouvrez le fichier en mode écriture et écrivez quelque chose (ici, la date et l'heure)
with open(file_name, 'w') as file:
    file.write(f"Exécution à : {date_time}")

print(f"Fichier {file_name} créé avec succès.")
