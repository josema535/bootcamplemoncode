#! /bin/bash
if [[ $# -lt 1 ]]; then
    echo No hay palabra para realizar la busqueda , saliendo ...
    exit

else
    palabra=$1
fi
curl -s -O 