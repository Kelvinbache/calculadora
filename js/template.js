// creando la plantilla de los objetos

class Calculator{
    constructor(number1,number2){
        this.number1 = number1,
        this.number2 = number2
    }
}

export {
    Calculator
}


/* problema que estoy viendo: 
1) el codigo se esta repitiendo muchas veces
2) cuando pasamos un numero indefinido, sale naN, tenemos que poner un condicion para manejar ese error 
3) ahora debemos pensar como podemos reducir codigo 
*/