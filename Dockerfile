FROM ubuntu:22.04

# Instalar paquetes necesarios
RUN apt-get update
RUN apt-get install -y iputils-ping dnsutils

# Configurar comando por defecto cuando se ejecute el contenedor
CMD ["/bin/bash"]