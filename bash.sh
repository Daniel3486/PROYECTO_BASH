#!/bin/bash

if [[ "$#" -ne "1" ]]
then
	echo "Debes de pasar un parámetro"
elif [[ "$1" = "-a" || "$1" = "-t" ]]
then
	while true; do
		if [[ "$1" = "-a" ]]
		then			
			echo -e "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:\n"
			echo -e "\t1. SCRUM"
			echo -e "\t2. X.P."
        		echo -e "\t3. Kanban"
		        echo -e "\t4. Crystal\n"
			tema=" "
			while [[ "$tema" -ne "1" && "$tema" -ne "2" && "$tema" -ne "3" && "$tema" -ne "4" ]]; do
				read -p "Tema: " tema
				case $tema in
				1)
					seccion="SCRUM"
					archivo="SCRUM.inf"
					;;
				2)
					seccion="X.P."
					archivo="XP.inf"
					;;
				3)
					seccion="Kanban"
					archivo="Kanban.inf"
					;;
				4)	
					seccion="Crystal"
					archivo="Crystal.inf"
					;;
				*)
					echo "Opción inválida"
					;;
				esac
			done
		elif [[ "$1" = "-t" ]]
		then	
			echo -e "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:\n"
			echo -e "\t1. Cascada"
		        echo -e "\t2. Espiral"
        		echo -e "\t3. Modelo V\n"
			tema=" "
	        	while [[ "$tema" -ne "1" && "$tema" -ne "2" && "$tema" -ne "3" ]]; do
        	        	read -p "Tema: " tema
	        	        case $tema in
        	        	1)
                	        	seccion="Cascada"
					archivo="Cascada.inf"
        	                	;;
	        	        2)
        	        	        seccion="Espiral"
					archivo="Espiral.inf"
	                	        ;;
		                3)
        		                seccion="Modelo V"
					archivo="Modelo_V.inf"
	                	        ;;
				*)
					echo "Opción inválida"
					;;
	                	esac
        		done
		fi
		echo ""
		opcion=" "
		while [[ "$opcion" -ne "5" && "$opcion" -ne "6" ]]; do		
			echo -e "Usted esta en la sección $seccion, selecione la opción que desea utilizar.\n"
		        echo -e "\t1. Agregar información"
        		echo -e "\t2. Buscar"
		        echo -e "\t3. Eliminar información"
			echo -e "\t4. Leer base de información"
			echo -e "\t5. Menú anterior"
			echo -e "\t6. Terminar ejecución\n"
			read -p "Opción: " opcion
                	echo ""
			case $opcion in
                	1)
               			read -p "Concepto: " concepto
                               	read -p "Definicion: " definicion
		         	echo "[$concepto] .- $definicion." >> "$archivo"
        	                echo -e "\nConcepto agregado exitosamente.\n"
                	        ;;
			2)
				if [[ -e $archivo ]]
				then
					read -p "Concepto a buscar: " Concepto
					ConceptoBuscado=$(grep "^\[$Concepto\]" "$archivo")
					if [[ -n "$ConceptoBuscado" ]]
					then
						echo -e "\n$ConceptoBuscado\n"
					else
						echo -e "\nConcepto no encontrado\n"
					fi
				else
					echo -e "El archivo no existe\n"
				fi
				;;
			3)
				if [[ -e $archivo ]]
				then
					read -p "Concepto a eliminar: " ConceptoAEliminar

					if grep "^\[$ConceptoAEliminar\]" "$archivo"
					then
						sed -i "/^\[$ConceptoAEliminar\]/d" "$archivo"
						echo -e "\nConcepto eliminado\n"
					else
						echo -e "\nConcepto no encontrado\n"
					fi
				else
					echo -e "El archivo no existe\n"
				fi
				;;
			4)
				if [[ -e $archivo ]]
				then 
					cat "$archivo"
					echo ""
				else
					echo -e "El archivo no existe\n"
				fi
				;;
			5)
				:
				;;
			6)
				exit 0
				;;
               	        *)
                       	        echo -e "Opción invalida\n"
                               	;;
	                esac
		done
	done
else
	echo "Parámetro no valido"
fi						

