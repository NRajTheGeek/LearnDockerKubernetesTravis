## setting up a base image
FROM node:10.12.0
RUN mkdir -p app
WORKDIR /app

COPY ./www/package.json ./
COPY ./www/public ./public
COPY ./www/src ./src
RUN npm install
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/build/share/nginx/html