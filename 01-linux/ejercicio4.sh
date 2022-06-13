#! /bin/bash
if [[ $# -lt 1 ]]; then
	echo No hay palabra para realizar la busqueda , saliendo...
else
	palabra=$1
	curl -s http://metaphorpsum.com/paragraphs/6 > fichero1.txt
	veces=$(grep -io -w $palabra  < fichero1.txt | wc -l)
	if [[ veces -eq 0 ]]; then
	
       		echo la palabra $palabra no se encuentra en el fichero
	else
		if [[ veces -eq 1  ]]; then
		echo la palabra $palabra aparece una vez
		echo y aparece por primera vez en la linea $( grep -io -n -w $palabra < fichero1.txt | head -n1 | cut -d ":" -f 1)
		

		else
			echo la palabra $palabra aparece $veces veces
			echo y aparece por primera vez en la linea  $(grep -io -n -w $palabra < fichero1.txt| head -n1 |cut -d ":" -f 1 )
					
		fi

	fi 
fi

