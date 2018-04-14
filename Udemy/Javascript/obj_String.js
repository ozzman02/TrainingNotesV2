/* String is an object not an array */

var a = new String("Fernando Javier Herrera Solano");

console.log(a[0]);
console.log(a["0"]);
console.log(a);

var b = "Herrera";

console.log(b.toUpperCase());
console.log(b.toLowerCase());

var i = b.indexOf("e");
console.log("La letra esta en la pos: " + i);

i = b.lastIndexOf("e");
console.log("La letra esta en la pos: " + i);

var nombre = a.substr(0, a.indexOf(" "));
console.log(nombre);

var split = a.split(" ");
console.log(split);
console.log(split.length);

document.write("Hola mundo !!!");
document.write("<br>");
document.write(a.italics());
document.write("<br>");
document.write(a.blink());
document.write("<br>");
document.write(a.strike());
document.write("<br>");
document.write(a.bold());