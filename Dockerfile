## setting up a base image
FROM node:alpine as builder
WORKDIR '/app'

COPY ./www/package*.json ./
RUN npm install
COPY ./www .
RUN npm run build


FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html