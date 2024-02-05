import {Calculator} from './template.js';

const division = new Calculator(1,8);

Calculator.prototype.div = function(){
    return this.number1 / this.number2
}

console.log(`result of the division: ${division.div()}`)