var nota = 70;

if (nota >= 90) {
	console.log("A");
} else if (nota >= 80) {
	console.log("B");
} else if (nota >= 70) {
	console.log("C");
} else if (nota >= 60) {
	console.log("D");
} else {
	console.log("F")
}

console.log("Termino el codigo");

var a = 10;
var b = 20;
var c = (a > b)? a : b;

console.log(c);

var d = (a > b)? function() {
	console.log("A es mayor a B");
	return a;
}() : function() {
	console.log("B es mayor a A");
	return b;
}()

console.log(d);


var e = 10;
var f = undefined;

// toma la variable que este definida y con valor
var g = e || f;

console.log(g);


function getNombre(nombre) {
	var nomb = nombre || "<sin nombre>";
	//var nomb = nombre || "<sin nombre>" || "<sin apellido>";
	//var nomb = nombre || null || "<sin apellido>";
	//var nomb = nombre || null || null || undefined;
	//var nomb = null || null || null || undefined;
	//var nomb = null || null || null || null;
	//var nomb = null || null || null || null || 123;
	console.log("Imprimiendo getNombre... " + nomb);
};

getNombre();
getNombre("Oscar");