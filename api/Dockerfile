## setting up a base image
FROM node:10.12.0

RUN mkdir -p app
WORKDIR /app

COPY ./package.json ./app.js ./
COPY ./views ./views
COPY ./routes ./routes
COPY ./public ./public

RUN npm install

EXPOSE 4000
CMD ["npm", "start"]