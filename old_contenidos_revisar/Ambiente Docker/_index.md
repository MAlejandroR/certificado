---
title: "Creando el ambiente"
linkTitle: "Ambiente con docker"
weight: 20
icon: fa-brands fa-docker
draft: false
---


{{< pageinfo >}}
Cómo crear tokens en php  
{{< /pageinfo >}}
{{% pageinfo %}}
https://github.com/firebase/php-jwt
{{% /pageinfo %}}

## Creando el ambiente 
Creamos un fichero docker file con los siguientes servicios    
Vamos a necesitar o disponer de 3 servicios:
> Apache con php
Para el servidor web con el intérprete php
> Mysql
Servidor de base de datos
> phpmyadmin
Una utilidad para poder acceder a la base de datos

### Apache y php

Partimos de la imagen __php:8.2-apache__ __(https://hub.docker.com/_/php)__
{{< imgproc  contenedor_apache_1.png Fit "100000x700000 center" >}}

{{< /imgproc >}}
La vamos a aportar dentro de un Dockerfile, ya que hay que instalar librerías que no vienen en la imagen oficial.
Necesitamos tener las siguientes librerías:
> * __En php__
pdo, mysql_pdo
> * __En apache__
>  habilitar los módulos:
> * headers
Estos módulos nos permitirán establecer cabeceras donde estableceremos que aceptamos solicitudes de direntes orígenes
> * Esto es importante por la seguridad CORS
> * rewrite
#### Cors
{{% pageinfo%}}
__CORS__
> Cross-Origin Resource Sharing o compartir recursos de orígenes cruzados.
Mira la sección de [CORS](/contenido/docs/cors/)
{{% /pageinfo%}}
* Agregamos un fichero de configuración, le llamamos por ejemplo  _apache-config.conf_ y lo copiamos
{{< highlight apache2 "linenos=table,anclorlinenos=true, hl_lines=" >}}
  <VirtualHost *:80>
  ServerAdmin manuelromeromigue@gmail.com
  DocumentRoot /var/www/html
      <Directory /var/www/html>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
{{< / highlight >}}

* También tenemos que habilitar el módulo de __header__
{{< imgproc contenedor_apache_".png   Fit "100000x700000 center" >}}

{{< /imgproc >}}


```dockerfile
version: "3.6"
services:
  apache:
    build: apache
    ports:
      - ${PORT_APACHE}:80
    volumes:
      - ./../../app:/var/www/html
    depends_on:
      - mysql
  mysql:
    image: mysql
    ports:
      - ${PORT_MYSQL}:3306
    volumes:
      - ./../../datos/mysql:/var/lib/mysql
      - ./../../datos/base_datos.sql:/docker-entrypoint-initdb.d/init.sql
    environment:
      - MYSQL_USER=${USER_}
      - MYSQL_PASSWORD=${PASSWORD}
      - MYSQL_DATABASE=${DATABASE}
      - MYSQL_ROOT_PASSWORD=${PASSWORD_ROOT}
  phpmyadmin:
    image: phpmyadmin
    ports:
      - ${PORT_PHPMYADMIN}:80
    depends_on:
      - mysql
    environment:
      - PMA_ARBITRARY=1
      - PMA_HOST=mysql
```
## 





