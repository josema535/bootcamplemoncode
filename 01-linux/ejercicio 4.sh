#! /bin/bash
if [[ $# -lt 1 ]]; then
    echo No hay palabra para realizar la busqueda , saliendo ...
else
    palabra=$1
    curl -s  http://metaphorpsum.com/paragraphs/6 > fichero1.txt
    echo La palabra $palabra aparece
    grep -io $palabra < fichero1.txt | wc -l
    echo veces
fi
 |