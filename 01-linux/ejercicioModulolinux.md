# Ejercicios del módulo 1 - Fundamentos de linux.

##  Resolucion del ejercicio 1
***
Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.

```
 foo/
 ├─ dummy/
 │  ├─ file1.txt
 │  ├─ file2.txt
 ├─ empty/
```
Donde file1.txt debe contener el siguiente texto:

Me encanta la bash!!

Y file2.txt debe permanecer vacío.
***
# Resolución
El primer paso será crear la estructura de directorios. Para ello usaremos los comandos "mkdir" y "cd" , para crear directorios y cambiarnos al directorio que queramos.
Como el ejercicio no indica que la estructura se cree a partir de un punto concreto, lo crearé desde el directorio raiz , para ello me situo en el punto raiz de la estrutura de directorios de linux ejecutando el comando:

    cd /
Desde este punto procedo a crear la estructura de directorios usando los siguientes comandos:
    
    mkdir foo
    mkdir ./foo/dummy
    mkdir ./foo/empty

Una vez creada la estructura procedemos a crear los ficheros que indica la practica dentro del directorio dummy. Nos cambiamos al directorio dummy, dentro del directorio "foo":

    cd ./foo/dummy

Tambien podriamos haber ido paso a paso , cambiandonos primero al directorio "foo" y luego al directorio "dummy":

    cd foo
    cd dummy

Una vez aqui creamos el fichero "file1.txt" que debe contener el texto "Me encanta la bash !!". Aqui hay varias posibilidades , la más facil creo que sería crear el fichero mediante la redirección del comando "echo":

    echo Me encanta la bash!! > file1.txt

o bien podríamos usar un editor de texto , como vim o nano.

Para crear el fichero "file2.txt" usaré el comando touch , que crea el fichero vacío:

    touch file2.txt








