function obtenerAleatorio() {
	return Math.random();
}

function obtenerNombre() {
	return "Oscar";
}

function esMayor05() {
	if (obtenerAleatorio() > 0.5) {
		return true;
	} else {
		return false;
	}
}

function crearPersona(nombre, apellido) {
	return {
		nombre: nombre,
		apellido: apellido
	}
}

function creaFuncion() {
	return function(nombre) {
		console.log("Primera funcion, retorna: " + nombre);
		return function(apellido) {
			console.log("Segunda funcion, retorna: " + apellido);
		}
	}
}


//console.log(obtenerAleatorio() + 10);
//console.log(obtenerNombre() + " " + "Santamaria");
//console.log(esMayor05());

/*if (esMayor05()) {
	console.log("Es mayor a 0.5");
} else {
	console.log("Es menor a 0.5");
}*/

var persona = crearPersona("Oscar", "Santamaria");

//console.log(persona);
//console.log(persona.nombre);
//console.log(persona.apellido);

var nuevaFuncion = creaFuncion();
var segundaFuncion = nuevaFuncion(persona.nombre);

segundaFuncion(persona.apellido);
