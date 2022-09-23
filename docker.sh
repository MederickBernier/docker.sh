#! /bin/bash

echo "Entrez le nom du projet (dossier contenant votre projet)"

read project

#changer le basePath ici pour que ca soit fonctionnel pour chaque utilisateur!
basePath="./FOLDER_WHERE_PROJECTS_ARE"

fullPath="${basePath}${project}"

echo "Entrez le type de run que vous voulez faire"
echo "f pour une run complète (build et up)"
echo "b pour une run build"
echo "u pour une run up"
echo "fc pour une run complète et ouvrir vscode"
echo "uc pour une run up et ouvrir vscode"

read type

case $type in
  f)
    cd $fullPath
    docker-compose build
    docker-compose up ;;
  b)
    cd $fullPath
    docker-compose build ;;
  u)
    cd $fullPath
    docker-compose up ;;
  fc)
    cd $fullPath
    code .
    docker-compose build
    docker-compose up ;;
  uc)
    cd $fullPath
    code .
    docker-compose up ;;
  *)
    echo "Entrez le type de run que vous voulez faire"
    echo "f pour une run complète (build et up)"
    echo "b pour une run build"
    echo "u pour une run up"
    echo "fc pour une run complète et ouvrir vscode"
    echo "uc pour une run up et ouvrir vscode"

    read type ;;
esac