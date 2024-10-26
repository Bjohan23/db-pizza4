FROM mariadb:10.6

# Configuración de MariaDB
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Puerto expuesto
EXPOSE 3306

# Punto de montaje para los datos
VOLUME /var/lib/mysql