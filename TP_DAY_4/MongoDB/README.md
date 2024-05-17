# Script d'insertion d'enregistrements vidéo dans MongoDB

## Description

Ce projet contient un script JavaScript pour insérer des enregistrements vidéo dans une base de données MongoDB.

## Prérequis

- MongoDB doit être installé et en cours d'exécution sur votre machine.
- MongoDB Shell (mongo) doit être installé.

## Contenu du projet

- `insert_videos.js`: Script JavaScript pour insérer des enregistrements vidéo dans MongoDB.

## Instructions

### Démarrage du serveur MongoDB

1. Ouvrez un PowerShell.
2. Lancez le serveur MongoDB en exécutant la commande suivante :
   ```sh
   mongod

### Exécution du script 
1. Ouvrez une invite de commande.
2. Exécutez le script avec MongoDB Shell :
    ```sh
   mongo < insert_videos.js
   
### Vérification de l'insertion des données
1. Ouvrez un PowerShell et entrer :
   ```sh
   mongo
2. Sélectionnez la base de données utilisée par le script :
   ```js
   use videodb
3. Vérifiez si les enregistrements vidéo ont été ajoutés:
4. ```js
   db.video_recordings.find().pretty();