# BOUCHAAL Samia 28610654
# AMRI Melinda 28713631
***

## Réseau Docker

Le réseau `strapi-network` est créer avec l'adresse IP `172.19.0.0/16`.

## Conteneur PostgreSQL

Un conteneur Docker pour la base de données PostgreSQL a été démarré avec les paramètres suivants :

* Nom du conteneur : `strapi-pg`
* Adresse IP : `172.19.0.2`
* Utilisateur PostgreSQL : `strapi`
* Mot de passe PostgreSQL : `safepassword`
* Base de données : `strapi`
* Ports exposés : `5432:5432`

Cette base de données est utilisée par l'application Strapi et est accessible localement sur le port `5432`.

## Conteneur Frontend

Les modalités de construction et de lancement du front-end sont dans 

- Nom du conteneur : `strapi-fe`
- Ports exposés : `5173:5173`


## Conteneur Backend

- Nom du conteneur : `strapi-be`
- Port exposé : `1337:1337`

Le conteneur héberge l'application backend.

***

## Pour visualiser le projet :

1. **Téléchargez le projet :**
   Téléchargez le projet depuis le dépôt Git.

2. **Lancer la commande : 'bash backend.sh' pour créer le réseau et construire puis lancer les conteneurs de la base de donnée et du backend:**


3. **Ouvrez localhost:1337 dans votre navigateur :**
   Connectez-vous ou inscrivez-vous dans l'interface Strapi. Récupérez le token d'authentification.

4. **Collez le token dans ./front_end/src/config.ts :**
   Collez le token d'authentification dans le fichier `front_end/src/config.ts` pour autoriser l'accès au backend.

5. **Lancer la commande : 'bash frontend.sh' pour lancer le conteneur frontend:**

6. **Lancer la commande : 'bash stop.sh' pour arrêter les conteneurs**

7. **Lancer la commande : 'bash rm.sh' pour supprimer les conteneurs**


**_ATTENTION : les adresses IP de ./projetop/.env et ./projetop/config/database.js doivent être en raccord avec l'adresse IP du réseau._**

