#! /bin/bash
if [[ $# -gt 1 ]]; then
    TEXTOFICHERO=$1
else
    TEXTOFICHERO='Que me gusta la bash!!!!'
fi
mkdir foo
mkdir ./foo/dummy/
mkdir ./foo/empty/
echo $TEXTOFICHERO > file1.txt 
touch file2.txt
echo Fin ejercicio 1
