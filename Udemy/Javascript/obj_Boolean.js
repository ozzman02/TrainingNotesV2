
/* Default value is false if only in the following scenarios*/

var a = new Boolean(0);
var b = new Boolean(-0);
var c = new Boolean(null);
var d = new Boolean(NaN);
var e = new Boolean(undefined);
var f = new Boolean("");

console.log(a);
console.log(b);
console.log(c);
console.log(d);
console.log(e);
console.log(f);

var g = new Boolean("false");
console.log(g);

var h = new Boolean();
console.log(h.valueOf());

/* This condition checks if h exist or if it is defined 
or if it has a value */
if (h) {
	console.log("Me imprimi !");
} else {
	console.log("No me imprimi !");
}

/* If h needs to be evaluated use valueOf()*/
if (h.valueOf()) {
	console.log("Me imprimi !");
} else {
	console.log("h es false !");
}