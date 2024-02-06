import { Calculator } from "./template.js";

const NUMBER1 = process.env.NUMBER1;
const NUMBER2 = process.env.NUMBER2;

const subtraction = new Calculator(NUMBER1,NUMBER2);

// estamos haceindo que el objeto tenga una propiedad nueva 
subtraction.sub = function(){
    return this.number1 - this.number2
};

console.log(`result of the subtraction: ${subtraction.sub()}`)