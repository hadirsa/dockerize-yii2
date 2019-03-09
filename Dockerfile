FROM uphp

WORKDIR /var/www/html/
COPY . . 
RUN composer install

RUN mkdir -p runtime frontend/web/assets && \
    chmod -R 775 runtime frontend/web/assets && \
    chown -R www-data:www-data runtime frontend/web/assets 

EXPOSE 80
