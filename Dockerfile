# Étape 1 : Base Nginx officielle
FROM nginx:alpine

# Étape 2 : Copier les fichiers HTML dans le dossier public de Nginx
COPY . /usr/share/nginx/html

# Étape 3 : Supprimer la config par défaut de Nginx si besoin
RUN rm /etc/nginx/conf.d/default.conf

# Étape 4 : Créer une config simple
COPY nginx.conf /etc/nginx/conf.d

# Port exposé (Render détecte automatiquement)
EXPOSE 80
