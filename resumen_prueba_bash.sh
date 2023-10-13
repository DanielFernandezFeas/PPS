#! /usr/bin/bash

###################
echo 'Hola, mundo.'
eixt
###################
echo "El valor de \$PWD es: $PWD" # Con $ delante ejecuta la orden
##################
# ./nombre arg1 arg2... imprime cada argumento pasado
for arg in "$@"
do
  echo "\$arg: $arg"
done
exit

#################
#Recorre todoss los ficheros del directorio en el que estas comprobando si
# tienen los permisos necesarios para ejecutarse
#!/bin/bash

for fich in *.bash *.sh
do
  echo "Fichero script de shell: $fich"
  if [ -x "$fich" ]; then
    echo "   Nota: es ejecutable."
  else
    echo "   Nota: no es ejecutable."
  fi
done

exit 0

#################
# Imprime los numeros del 1 al 3
#!/bin/bash
#{1..3} Esto lo que hacea es crear una lista
for i in {1..3}; do
  echo "\$i: $i"
done
exit
################
#!/bin/bash

# Solicitar al usuario que ingrese los valores de n y m
read -p "Ingrese el valor de n: " n
read -p "Ingrese el valor de m: " m

# Asegurarse de que n sea menor o igual a m
if [ "$n" -le "$m" ]; then
  for ((i = n; i <= m; i++)); do
    echo "$i"
  done
else
  ## Imprime los valores de n a m
  echo "El valor de n debe ser menor o igual a m."
fi

exit 0
####################

#!/usr/bin/bash
echo "Hola mundo. Soy $USER y estoy en el equipo $HOSTNAME"
echo "Hola, mundo. Soy \"$USER\", y estoy en el equipo \"$HOSTNAME\"."

echo "Otra forma de mostrar quién soy: $(whoami)."
echo "Otra forma de mostrar quién soy: \"$(whoami)\"."

echo "El contenido de la variable MIVAR es: $MIVAR".

exit

###################

#!/bin/bash
CONTADOR_PARES=0
CONTADOR_IMPARES=0
for numero in 0 1 2 3 4 5 6 7 8 9
do
  if [ $(( $numero % 2 )) -eq 0 ]
  then
    CONTADOR_PARES=$(( $CONTADOR_PARES+1 ))
    continue
  fi
  CONTADOR_IMPARES=$(( $CONTADOR_IMPARES+1 ))
done
echo "CONTADOR_PARES: $CONTADOR_PARES"
echo "CONTADOR_IMPARES: $CONTADOR_IMPARES"
exit

##############

#!/bin/bash
# (Nota: este ejemplo requiere bash en vez de sh (dash), ya que se emplea el generador de lista {0..9}.)
CONTADOR_PARES=0
CONTADOR_IMPARES=0
for numero in {0..9}
do
  if [ $(( $numero % 2 )) -eq 0 ]
  then
    CONTADOR_PARES=$(( $CONTADOR_PARES+1 ))
    continue
  fi
  CONTADOR_IMPARES=$(( $CONTADOR_IMPARES+1 ))
done
echo "CONTADOR_PARES: $CONTADOR_PARES"
echo "CONTADOR_IMPARES: $CONTADOR_IMPARES"
exit

############n el earchivo ####
# El bucle es que ha escribe las palabra
#!/bin/bash
for palabra in abc def Fin 12345
do
  echo "\$palabra: $palabra"
done
exit
###############
#Introduce argumentos e itera sobre ellos para imprimirlos
#!/bin/bash

# Comprueba que se le hayan pasado argumentos
if [ $# -eq 0 ]; then
  echo "Debes proporcionar al menos una palabra como argumento."
  exit 1
fi

# Itera a través de los argumentos y muestra cada palabra
for palabra in "$@"; do
  echo "\$palabra: $palabra"
done

exit 0
############
#!/bin/bash
#Introduce los argumentos de antes mediante una lista
VAR_LISTA="abc def Fin 12345"
for palabra in $VAR_LISTA
do
  echo "\$palabra: $palabra"
done
exit
#########
GNU nano 4.8                             bucleConLista.sh
#!/bin/bash
# Se crea una lista con los elementos que introduces por linea
VAR_LISTA="$@"
# Comprueba que se hayan introducido argumentos
if [ $# -eq 0 ]; then
      echo "No se puede realizar sin añadir ningun argumento"
      exit 1
fi
# Recorre la lista de argumentos y los imprime
for palabra in "$VAR_LISTA"; do
      echo "\$palabra: $palabra"
done

exit 0
##########
#!/bin/bash
contador=0

until [ $contador -ge 5 ]
do
  echo 'Esto no acaba...'
  ((contador++))
done

echo "Bucle terminado."
exit
##########

#!/bin/bash
i=0
until [ $i -ge 5 ]
do
  echo "\$i: $i"
  i=$(expr $i + 1)
done
exit
##########


#!/bin/bash
while true
do
  echo 'Esto no acaba...'
done
exit

##########
#!/bin/bash
i=0
while [ $i -lt 5 ]
do
    echo "\$i: $i"
    i=$(expr $i + 1)
done
exit
##########
#!/bin/bash
echo 'Elija destino (Segovia, Soria, Palma de Mallorca, Valencia):'
read DESTINO
case "$DESTINO" in
  Segovia)
    echo "$DESTINO no tiene puerto."
    ;;
  Soria)
    echo "$DESTINO no tiene puerto."
    ;;
  'Palma de Mallorca')
    echo "$DESTINO tiene puerto."
    ;;
  Valencia)
    echo "$DESTINO tiene puerto."
    ;;
  *)
    echo "$DESTINO no es un destino reconocido."
    ;;
esac
exit
