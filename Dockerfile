# Utiliser une image Node.js comme base
FROM node:latest

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le package.json et le package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier tous les fichiers du projet dans le répertoire de travail
COPY . .

# Exposer le port sur lequel le serveur fonctionne (3000 dans ce cas)
EXPOSE 3000

# Commande pour lancer le serveur lorsque le conteneur démarre
CMD ["npx", "json-server", "db.json"]
