import { Calculator } from "./template.js";

const NUMBER1 = process.env.NUMBER1;
const NUMBER2 = process.env.NUMBER2;

const division = new Calculator(NUMBER1, NUMBER2);

division.div = function () {
  return this.number1 / this.number2;
};

console.log(`result of the division: ${division.div()}`);
