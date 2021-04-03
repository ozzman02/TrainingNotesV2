function Persona() {
	//console.log(this);
	this.nombre = "Juan";
	this.apellido = "Mendoza";
	this.edad = 30;
	this.imprimirPersona = function() {
		return this.nombre + " " + this.apellido + "(" + this.edad + ")";
	}
}

function Persona2(nombre, apellido, edad) {
	this.nombre = nombre;
	this.apellido = apellido;
	this.edad = edad;
	this.imprimirPersona = function() {
		return this.nombre + " " + this.apellido + "(" + this.edad + ")";
	}	
}


var juan = new Persona();
var oscar = new Persona2("Oscar", "Santamaria", "34");

console.log(juan);
console.log(juan.imprimirPersona());

console.log(oscar);
console.log(oscar.imprimirPersona());

