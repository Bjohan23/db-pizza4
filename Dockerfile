FROM mariadb:10.6

# Configuración de MariaDB
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Variables de entorno usando secretos
RUN echo "MYSQL_DATABASE=$(cat /run/secrets/mysql_database)" >> /etc/environment && \
    echo "MYSQL_USER=$(cat /run/secrets/mysql_user)" >> /etc/environment && \
    echo "MYSQL_PASSWORD=$(cat /run/secrets/mysql_password)" >> /etc/environment && \
    echo "MYSQL_ROOT_PASSWORD=$(cat /run/secrets/mysql_root_password)" >> /etc/environment

# Puerto expuesto
EXPOSE 3306

# Punto de montaje para los datos
VOLUME /var/lib/mysql