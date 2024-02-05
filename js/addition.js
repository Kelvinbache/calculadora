import { Calculator } from "./template.js";


const addition = new Calculator(10,5);

// estamos definiendo una nueva propiedad al objeto, o estamos haciendo multaciones 
Calculator.prototype.sum = function(){
    return this.number1 + this.number2
}

console.log(`result of the addition: ${addition.sum()}`)
