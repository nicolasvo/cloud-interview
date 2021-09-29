FROM php:7.2-alpine

WORKDIR /app
COPY . .

RUN apk update && apk add composer
RUN composer install

EXPOSE 3000

CMD [ "php", "-S", "0.0.0.0:3000", "-t", "public/" ]
