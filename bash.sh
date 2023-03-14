#!/bin/bash

if [[ "$#" -ne "1" ]]
then
	echo "Debes de pasar un parámetro"
elif [[ "$1" = "-a" || "$1" = "-t" ]]
then
	if [[ "$1" = "-a" ]]
	then
		echo -e "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:\n"
		echo -e "\t1. SCRUM"
		echo -e "\t2. X.P."
    		echo -e "\t3. Kanban"
	        echo -e "\t4. Crystal\n"
			read -p "Tema: " tema
			case $tema in
			1)
				seccion="SCRUM"
				;;
			2)
				seccion="X.P."
				;;
			3)
				seccion="Kanban"
				;;
			4)
				seccion="Crystal"
				;;
			*)
				echo "Opción inválida"
				;;
			esac
	elif [[ "$1" = "-t" ]]
	then
		echo -e "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:\n"
		echo -e "\t1. Cascada"
	        echo -e "\t2. Espiral"
    		echo -e "\t3. Modelo V\n"
    	        	read -p "Tema: " tema
        	        case $tema in
    	        	1)
            	        	seccion="Cascada"
    	                	;;
        	        2)
    	        	        seccion="Espiral"
                	        ;;
	                3)
    		                seccion="Modelo V"
                	        ;;
	                *)
    		                echo "Opción inválida"
            		        ;;
                	esac
	fi
	echo ""
	opcion=" "
	while [[ "$opcion" -ne "6" ]]; do
		echo -e "Usted esta en la sección $seccion, selecione la opción que desea utilizar.\n"
	        echo -e "\t1. Agregar información"
    		echo -e "\t2. Buscar"
	        echo -e "\t3. Eliminar información"
		echo -e "\t4. Leer base de información"
		echo -e "\t5. Menú anterior"
		echo -e "\t6. Terminar ejecución\n"
		read -p "Opción: " opcion
            	echo ""
	done
else
	echo "Parámetro no valido"
fi
