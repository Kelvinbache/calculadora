import { Calculator } from "./template.js";

const multiplication = new Calculator(8,9);

Calculator.prototype.mul = function(){
    return this.number1 * this.number2;
}

console.log(`result of the multiplication:${multiplication.mul()}`)