FROM php:8.2-apache

# Habilitar mod_rewrite para .htaccess
RUN a2enmod rewrite

# Copiar los archivos al contenedor
COPY . /var/www/html/

# Cambiar DocumentRoot a /public
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

# Permitir uso de .htaccess
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Dar permisos a Apache
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
