#! /bin/bash

# variables globales 
number1=0
number2=0


# muestra un mensaje por consola, y recibe los datos
promt(){
 read -p "Ponga un numero para comensar con las operaciones:" number1
 read -p "Ponga otro numero para comensar con las operaciones:" number2       

# pasamos los datos a otras variables que son globales 
  number1=$number1
  number2=$number2
}



# Aqui estamos llamando a los archivos de js 
addition(){
echo "-----------------------------------------------"
         NUMBER1=$1  NUMBER2=$2 node js/addition.js
echo "-----------------------------------------------"
}

subtraction(){
echo "------------------------------------------------" 
      NUMBER1=$1  NUMBER2=$2  node js/subtraction.js
echo "-------------------------------------------------"    
}

multiplication(){
echo "------------------------------------------------"    
      NUMBER1=$1  NUMBER2=$2 node js/multiplication.js    
echo "------------------------------------------------"
}

division(){
echo "-------------------------------------------------"    
         NUMBER1=$1  NUMBER2=$2 node js/division.js    
echo "-------------------------------------------------"
}



colorBlue(){
  blue="\e[34m" 
  clear="\e[0m"
  echo -ne $blue$1$clear
}


color_light_cyan(){
  light_cyan="\e[96m" 
  clear="\e[0m"
  echo -ne $light_cyan$1$clear
}

# aqui creamos un menu interativo, y se repite varias veces 
menu () {

#simplemente esta mostrando un mesaje de las operaciones que se puenden realizar 

echo -ne "
bievenido a la calculador seleciones una operacion 

$(colorBlue '1)') addtion
$(colorBlue '2)') subtraction
$(colorBlue '3)') multiplication
$(colorBlue '4)') division
$(colorBlue '5)') exit
-------------------------------------------------------
$(color_light_cyan "select:")" 

read operation 

# Aqui una condicion, para diferenciar las operaciones que quiera hacer el usuario
case $operation in 
  1) promt ; addition $number1 $number2; menu
  ;;
  2) promt ; subtraction $number1 $number2; menu
  ;;
  3) promt ; multiplication $number1 $number2; menu
  ;;
  4) promt ; division $number1 $number2; menu
  ;;
  5) exit 0
  ;;
esac

}

menu 

# tenemos que ponerle color a esa terminal
# aparte debemos poner las variables de entorno privadas y no publicas 


#idea para los colores 