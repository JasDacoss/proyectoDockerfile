<h1 align="center"> Proyecto Dockerfile </h1>

## Antes de empezar
Lo primero es ir a git y crear un nuevo repositorio. Después de esto, creamos nuestro nuevo proyecto en el Code. Una vez listo esto, creamos también un nuevo proyecto en Git y lo asociamos al repositorio creado anteriormente. 

## Imagen de Ubuntu 22.04
```
FROM ubuntu:22.04

# Instalar paquetes necesarios
RUN apt-get update && apt-get install -y iputils-ping dnsutils

# Configurar comando por defecto cuando se ejecute el contenedor
CMD ["/bin/bash"]
```
En este Dockerfile, se utiliza la imagen base de Ubuntu 22.04 (`FROM ubuntu:22.04`). Luego, se actualiza el sistema y se instalan los paquetes `iputils-ping` (para el comando "ping") y `dnsutils` (para el comando "dig").

Por último, se configura el comando por defecto cuando se ejecute el contenedor (`CMD ["/bin/bash"]`).

Sin olvidar de primero guardar el fichero ejecutamos el siguiente comando en la terminal para construir la imagen Docker:

```
docker build -t myubuntu:22.04 .
```

El argumento `-t` define el nombre y etiqueta de la imagen (en este caso, "myubuntu" y "22.04" respectivamente). El punto al final indica que el Dockerfile se encuentra en la ubicación actual.

Para ejecutar un contenedor basado en la imagen personalizada, se utiliza el siguiente comando en la terminal:

```
docker run -it myubuntu:22.04
```

El argumento `-it` permite interactuar con el contenedor mediante la terminal. A continuación, verás la línea de comandos del contenedor Ubuntu, donde podrás ejecutar comandos como `ip`, `ping` y `dig`.
