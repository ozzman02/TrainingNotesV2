var carro = {
	color: "Blanco",
	marca: "Mazda",
	imprimir: function() {
		var salida = this.marca + " - " + this.color;
		return salida;
	}
}

var carro2 = {
	color: "Rojo",
	marca: "Toyota"
}

console.log(carro.imprimir());

var logCarro = function(arg1, arg2) {
	// this esta apuntando al objecto global window
	console.log("Carro:", this.imprimir());
	console.log("Argumentos: ", arg1, arg2);
	console.log("==============================");
}

// bind hace que this apunte a carro
var logModeloCarro = logCarro.bind(carro);

logModeloCarro("abc", "xyz");

// antes de los argumentos ponemos el objecto al cual queremos que apunte el this
logModeloCarro.call(carro, "123", "456");

// con la funcion apply los argumentos deben ir dentro de un arreglo 
logModeloCarro.call(carro, ["asd", "qwe"]);


// Funciones prestadas

console.log(carro.imprimir.call(carro2));

