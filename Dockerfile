FROM mariadb:10.6

# Argumentos que se pueden pasar durante la construcción
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

# Configuración de MariaDB
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Variables de entorno
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# Puerto expuesto
EXPOSE 3306

# Punto de montaje para los datos
VOLUME /var/lib/mysql