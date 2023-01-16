# DOcumentation projet

## Présentation du projet

* Il s'agit d'une application en CLI permettant de gérer un parc de machines et d'applicaiton au sein du SI d'une entreprise
* L'application est écrite en Python et les données stockées dans une BDD SQL (seul mariadb a été testé)
* Ici nous venons préparer un déploiement dans des conteneurs à l'aide de Dockerfile et d'un fichier Docker compose

## Pré-requis
* avoir docker et docker compose installé sur sa machine
* Récupérer les fichiers de ce dossier tp

## Utilisation

* Se mettre dans le dossier, et ouvrir un terminal 
* Pour lancer l'application en construisant les images : 
```
docker-compose up -d --build
```
* Pour envoyer les images créé, récupérer l'identifiant de l'image
* Tagguer l'image
```
docker tag iddelimage lenomdutag
```
* Envoyer l'image sur le hub (après s'être connecté)
```
docker push monimage
```
