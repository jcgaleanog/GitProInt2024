# Usar Ubuntu como base
FROM ubuntu:20.04

# Variables para evitar prompts durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar paquetes e instalar dependencias
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    apache2 \
    mariadb-server \
    php \
    php-mysql \
    libapache2-mod-php \
    && apt-get clean

# Descargar XAMPP e instalar
RUN wget https://www.apachefriends.org/xampp-files/8.2.6/xampp-linux-x64-8.2.6-0-installer.run \
    && chmod +x xampp-linux-x64-8.2.6-0-installer.run \
    && ./xampp-linux-x64-8.2.6-0-installer.run --mode unattended

# Exponer los puertos necesarios
EXPOSE 80 443 3306

# Iniciar Apache y MySQL cuando el contenedor arranque
CMD ["/opt/lampp/lampp", "start"]
