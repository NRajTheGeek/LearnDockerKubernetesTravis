# for the react UI
FROM node:10.12.0
RUN mkdir -p app
WORKDIR /app

COPY ./package.json ./
COPY ./public ./public
COPY ./src ./src

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]