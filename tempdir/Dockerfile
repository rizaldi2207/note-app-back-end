FROM node:16
COPY ./src /home/myapp/src/
COPY package.json /home/myapp/
COPY package-lock.json /home/myapp/
RUN npm install 
EXPOSE 5000
CMD nodemon /home/myapp/src/server.js
FROM node:16
COPY ./src /home/myapp/src/
COPY package.json /home/myapp/
COPY package-lock.json /home/myapp/
RUN npm install
EXPOSE 5000
CMD nodemon /home/myapp/src/server.js
FROM node:16
COPY ./src /home/myapp/src/
COPY package.json /home/myapp/
COPY package-lock.json /home/myapp/
CMD npm install
EXPOSE 5000
CMD nodemon /home/myapp/src/server.js
