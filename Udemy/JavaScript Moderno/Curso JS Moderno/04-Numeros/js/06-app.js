const a = "20";
const b = "20.2";
const c = "Uno";
const d = 20;


console.log(Number.parseInt(a));
console.log(Number.parseFloat(b));
console.log(Number.parseInt(c));    // NaN

console.log(Number.isInteger(c));
console.log(Number.isInteger(d));