# Ejercicios del módulo 1 - Fundamentos de linux.

##  Ejercicio 1
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


##  Ejercicio 2
***
Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty.

El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

    foo/
    ├─ dummy/
    │  ├─ file1.txt
    ├─ empty/
        ├─ file2.txt

Donde file1.txt y file2.txt deben contener el siguiente texto:

Me encanta la bash!!


***
# Resolución

Para volcar el contenido de file1.txt en file2.txt y teniendo en cuenta que file2 está vacio y que nos encontramos en el direcctorio "dummy" , podríamos hacerlo del siguiente modo:

    cat file1.txt > file2.txt

de este modo el contenido de file2 sería sobreescrito. Si quisieramos añadirlo sin perder el contenido de file2.txt , usariamos la siguiente instrucción:

    cat file1.txt >> file2.txt

Una vez volcado el contenido de file1 en file2 , vamos a proceder a moverlo a la carpeta empty, usaremos la siguiente instrucción , teniendo en cuenta que nos encontramos en el directorio "dummy" de la estructura:

    mv file2.txt ../empty/


##  Ejercicio 3
***
Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo.

Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será:

Que me gusta la bash!!!!


***
# Resolución




