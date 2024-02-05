import { Calculator } from "./template.js";

const subtraction = new Calculator(9,5);

Calculator.prototype.sub = function(){
    return this.number1 - this.number2
};

console.log(`result of the subtraction: ${subtraction.sub()}`)