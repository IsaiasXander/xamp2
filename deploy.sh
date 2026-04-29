#!/bin/bash

echo "Iniciando despliegue de la Agenda Telefónica"
git pull origin master

echo "Deteniendo contenedor existente"
docker-compose -f docker-compose.production.yml down

echo "Construyendo y levantando contenedor en modo producción"
docker-compose -f docker-compose.production.yml up -d --build