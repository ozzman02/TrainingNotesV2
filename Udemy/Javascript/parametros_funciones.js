function leccion5() {
	
	var a = 1;
	var b = "Fernando";

	console.log(b);
	console.warn(b);
	console.error(b);
	console.info(b);
}

function leccion6() {
	// mostrando undefined
	console.log(a);
	var a = "Oscar";
}

function leccion7() {
	function imprimir() {
		for (var i = 0; i < 8000; i++) {
			console.log("imprimio");
		}
	}
	imprimir();
}

/* Para demostrar que JS no es asincronico */
function presionoClick() {
	console.log("Click en boton");
}

/* tipos primitivos */
function leccion9() {
	var num = 10;
	var str = "Oscar";
	var und = undefined;
	var nul = null;
	var obj = {
		numero: 10,
		texto: "texto",
		objHijo: {
			numero2: 16,
			texto2: "texto2"
		}
	};
	console.log(obj);
}

function imprimir(nombre, apellido) {
	if (apellido === undefined) {
		apellido = "Santamaria";
	}
	console.log(nombre + " " + apellido);
}

function imprimirPersona(persona) {
	console.log(persona);
	console.log(persona.nombre);
	console.log(persona.apellido);
}

function imprimirFuncion(fn) {
	fn();
}

var objPersona = {
	nombre: "Carlos Andres",
	apellido: "Santamaria"
}

var miFuncion = function() {
	console.log("miFuncion");
}

imprimirPersona({
	nombre: "Oscar",
	apellido: "Santamaria"
}); 

imprimirPersona(objPersona);

imprimirFuncion(function() {
	console.log("Funcion anonima");
});

imprimirFuncion(miFuncion);



