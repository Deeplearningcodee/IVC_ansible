# Utilisez une image de base Python
FROM python:3.8-slim

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers de l'application dans le conteneur
COPY . /app

# Installez les dépendances de l'application
RUN pip install flask mysql-connector-python

# Exposez le port sur lequel l'application s'exécute
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]

