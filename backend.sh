#! bin/bash

#Creation du reseau
docker network create strapi-network

#Lancement du conteneur de la base de donnee
docker run -dit -p 5432:5432 -e POSTGRES_PASSWORD=safepassword -e POSTGRES_USER=strapi --name strapi-pg postgres

#Construction et Lancement du conteneur pour le back-end
docker build -t backend ./projetop
docker run -d --name strapi-be --network strapi-network -p 1337:1337 backend
docker network connect strapi-network strapi-pg
