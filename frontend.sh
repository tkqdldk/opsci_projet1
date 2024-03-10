#! bin/bash

#Construction et lancement du conteneur pour le front-end
docker build -t frontend ./front_end
docker run --name strapi-fe --network strapi-network -p 5173:5173 frontend