import { Calculator } from "./template.js";

const NUMBER1 = process.env.NUMBER1;
const NUMBER2 = process.env.NUMBER2;

const addition = new Calculator(NUMBER1,NUMBER2);

addition.sum = function(){
    return parseInt(this.number1) + parseInt(this.number2)
}

console.log((`result of the addition: ${addition.sum()}`))

