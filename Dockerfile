# Imagen base con PHP 8 y Apache
FROM php:8.2-apache

# Habilita mod_rewrite de Apache para que funcione .htaccess
RUN a2enmod rewrite

# Copia tu proyecto al contenedor
COPY . /var/www/html/

# Cambia el directorio raíz de Apache a la carpeta 'public'
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

# Permite que Apache use archivos .htaccess
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Establece permisos correctos
RUN chown -R www-data:www-data /var/www/html

# Expón el puerto 80
EXPOSE 80
