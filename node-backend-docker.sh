#!/bin/bash

mkdir tempdir
mkdir tempdir/src

cp package.json tempdir/.
cp package-lock.json tempdir/.
cp -r src/* tempdir/src/.

echo "FROM node:16" >> tempdir/Dockerfile
echo "WORKDIR /home/myapp/" >> tempdir/Dockerfile
echo "COPY ./src /home/myapp/src/" >> tempdir/Dockerfile
echo "COPY package.json /home/myapp/" >> tempdir/Dockerfile
echo "COPY package-lock.json /home/myapp/" >> tempdir/Dockerfile
echo "RUN npm install" >> tempdir/Dockerfile

echo "EXPOSE 5000" >> tempdir/Dockerfile
echo "CMD npm run start" >> tempdir/Dockerfile

cd tempdir
docker build -t noteapp .
docker run -t -d -p 5000:5000 --name noterunning noteapp
