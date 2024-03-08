FROM node:18-alpine

# Installation des dépendances nécessaires pour sharp
RUN apk update && \
    apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git

# Définition de l'environnement NODE_ENV
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Création du répertoire de travail
WORKDIR /opt/


# Copie des fichiers package.json et package-lock.json
COPY package.json package-lock.json ./

# Installation des dépendances
RUN npm install -g node-gyp && \
    npm config set fetch-retry-maxtimeout 600000 -g && \
    npm install

# Définition du PATH pour inclure les exécutables des modules Node
ENV PATH /opt/node_modules/.bin:$PATH

# Création du répertoire de l'application et copie des fichiers
WORKDIR /opt/app
COPY . .

# Attribution des permissions à l'utilisateur node
RUN chown -R node:node /opt/app

# Changement de l'utilisateur par défaut à node
USER node


# Build de l'application
RUN npm install esbuild@0.14.15
RUN npm run build

# Exposition du port
EXPOSE 1337

# Commande de démarrage de l'application
CMD ["npm", "run", "develop"]