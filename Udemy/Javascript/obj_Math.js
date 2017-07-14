var pi = Math.PI;
var e = Math.E;
var rnd = Math.random();

console.log(pi);
console.log(e);

var num1 = 10.456789;

console.log(num1);
console.log(Math.round(num1));
console.log(Math.round(num1*100)/100) ;
console.log(Math.floor(num1));
console.log(rnd);


function randomEntre(min, max) {
	return Math.floor(Math.random() * (max - min + 1) + min);
}

console.log(randomEntre(1, 6));
console.log(randomEntre(500, 1000));
console.log(Math.sqrt(10));
console.log(Math.pow(7, 2));