FROM node:17.0.1-alpine3.12

WORKDIR /app
 

COPY package*.json .
RUN npm install 
RUN npm install nodemon


CMD ["/app/node_modules/nodemon/bin/nodemon.js app.js"]