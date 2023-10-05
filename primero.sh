#! /bin/bash
# Comprobar que se le ha llamado con argumentos
if [ $# = 0 ]; then
        echo Hay que llamarle con argumentos. >&2
        exit 1
fi
#########################################
#echo '$0' es $0
#echo '$1' es $1
#echo '$2' es $2
#########################################
#Mostrar los argumentos. Usos de $@ y $* con y sin comillas
# Comprobar que los argumentos son el nombre de un directorio
for i in "$@"; do
  if [ -d "$i" ]; then
        echo $i
  fi
done
########################################
#Usar una variable de shell padre
#echo destino destino
exit 0
