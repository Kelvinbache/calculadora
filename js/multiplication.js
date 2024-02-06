import { Calculator } from "./template.js";


const NUMBER1 = process.env.NUMBER1;
const NUMBER2 = process.env.NUMBER2;

const multiplication = new Calculator(NUMBER1,NUMBER2);

multiplication.mul = function(){
    return this.number1 * this.number2;
}

console.log(`result of the multiplication:${multiplication.mul()}`)