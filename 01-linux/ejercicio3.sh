#! /bin/bash
if [[ $# -gt 0 ]]; then
    TEXTOFICHERO=$1
else
    TEXTOFICHERO='Que me gusta la bash!!!!'
fi
mkdir foo
mkdir ./foo/dummy/
mkdir ./foo/empty/
cd ./foo/dummy
echo $TEXTOFICHERO > file1.txt 
touch file2.txt
echo Fin ejercicio 1
cat file1.txt > file2.txt
mv file2.txt ../empty/
echo Fin del ejercicio 2