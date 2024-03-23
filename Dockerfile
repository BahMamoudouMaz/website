# Utilisation de l'image Nginx officielle comme base
FROM nginx:alpine

# Suppression du fichier de configuration par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Copie du fichier de configuration personnalisé
COPY nginx.conf /etc/nginx/conf.d/

# Copie des fichiers HTML et CSS dans le répertoire de contenu par défaut de Nginx
COPY . /usr/share/nginx/html

# Exposition du port 80
EXPOSE 8080

# Commande pour démarrer Nginx en mode démon
CMD ["nginx", "-g", "daemon off;"]

