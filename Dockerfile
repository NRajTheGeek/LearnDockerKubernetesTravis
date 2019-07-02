## setting up a base image
FROM node:10.12.0
RUN mkdir -p app
WORKDIR /app

COPY ./www/package.json ./
RUN npm install

COPY ./www/public ./public
COPY ./www/src ./src

EXPOSE 80
CMD ["npm", "start"]