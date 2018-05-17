# Chatbot basado en lenguaje Prolog

Segundo laboratorio del primer semestre del año 2018 de la asignatura Paradigmas de Programación del departamento de Ingenieria Informática de la Universidad de Santiago de Chile.

## Primeros Pasos

Estas instrucciones le ayudarán a instalar e inciar de manera correcta el programa, es necesario que cumpla con los requisitos

### Requisitos

Tener instalado [SWI-Prolog](http://www.swi-prolog.org)
Sistema Operativo: Microsoft Windows, macOS o alguna distribucion de GNU/Linux


### Instalación 

A continuación se detallan las instrucciones de instalación para los sistemas Windows, macOS, y Ubuntu

#### macOS

Clonar el repositorio

```
git clone http://github.com/ealopezg/prologChatbot
```

Instalar SWI-PROLOG

##### Forma facil

Descargar e instalar la aplicacion [SWI-Prolog:macOS](http://www.swi-prolog.org/download/stable/bin/SWI-Prolog-7.6.4.dmg)

##### Forma no tan facil
Instalar [Homebrew](https://brew.sh/index_es), utilizando la terminal

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Luego instalar SWI-Prolog

```
brew install swi-prolog
```

#### Ubuntu

Clonar el repositorio

```
git clone http://github.com/ealopezg/prologChatbot
```

Instalar SWI-Prolog

```
sudo apt-get install swi-prolog
```

#### Windows

Descargar e instalar SWI-Prolog

[64bits](http://www.swi-prolog.org/download/stable/bin/swipl-w64-764.exe)

[32bits](http://www.swi-prolog.org/download/stable/bin/swipl-w32-764.exe)

## Ejecutando el programa

Iniciando SWI-Prolog

### Ubuntu o macOS si es que instaló utilizando la forma "no tan facil"

Abrir la terminal y escribir
```
swipl
```
Es recomendable dirigirse a la carpeta donde está ubicado el archivo 'chatbot.pl' utilizando el comando cd.

### Windows y macOS si instaló de la forma "facil"

Iniciar el programa, usualmente se encuentra un icono en el escritorio en el caso de Windows y el icono en el Launchpad/Carpeta de aplicaciones en el caso de macOS


## Iniciando el chatbot

En el prompt de swi-prolog ejecutar lo siguiente, suponiendo que existe el archivo chatbot.pl

```
?- consult("C:\Users\Usuario\Desktop\chatbot.pl")
```


## Hecho en

* [SWI-Prolog](http://www.swi-prolog.org) 



## Autor

* **Esteban López Garrido** - *Initial work* - [ealopezg](https://github.com/ealopezg)
Estudiante de Ingenieria Civil en Informática de la Universidad de Santiago de Chile



