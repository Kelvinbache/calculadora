#! /bin/bash


read -p "
bievenido a la calculador seleciones una operacion 
1) addtion
2) subtraction
3) multiplication
4) division
5) exit

select:" operation


addition(){
    #read -p "ponga los numeros para realizar la suma:" number1 number2
    node js/addition.js
}

subtraction(){
      #read -p "ponga los numeros para realizar la suma:" number1 number2
    node js/subtraction.js    
}

multiplication(){
    #read -p "ponga los numeros para realizar la suma:" number1 number2
    node js/multiplication.js    
}

division(){
    #read -p "ponga los numeros para realizar la suma:" number1 number2
    node js/division.js    
}

# ahora debemos poner unas condiciones para llamar a las funciones, usa case para este trabajo

case $operation in 
  1) addition
  ;;
  2) subtraction
  ;;
  3) multiplication
  ;;
  4) division
  ;;
  5) exit 0
  ;;
esac

# falta, enviar datos desde bash a js 