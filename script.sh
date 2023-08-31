#!/bin/bash

# Vérification du nombre de paramètres
if [ $# -ne 1 ]; then
    echo "Usage: $0 <répertoire>"
    exit 1
fi

# Récupération du répertoire passé en argument
directory="$1"

# Vérification de l'existence du répertoire
if [ ! -d "$directory" ]; then
    echo "Le répertoire $directory n'existe pas."
    exit 1
fi

# Comptage des fichiers dans le répertoire
file_count=$(find "$directory" -maxdepth 1 -type f | wc -l)

echo "Le nombre de fichiers dans le répertoire $directory est : $file_count"
