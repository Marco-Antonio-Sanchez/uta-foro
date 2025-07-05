FROM php:8.2-apache

# Instala las extensiones de PHP necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilita mod_rewrite para .htaccess
RUN a2enmod rewrite

# Copia el proyecto completo al contenedor
COPY . /var/www/html/

# Permitir uso de .htaccess
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Establecer index.php como prioridad de carga
RUN echo "<IfModule dir_module>\n    DirectoryIndex index.php index.html\n</IfModule>" > /etc/apache2/conf-available/custom-dir.conf \
    && a2enconf custom-dir

# Permisos
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
