## setting up a base image
FROM node:10.12.0 as builder
RUN mkdir -p app
WORKDIR /app

COPY ./www/package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/build/share/nginx/html