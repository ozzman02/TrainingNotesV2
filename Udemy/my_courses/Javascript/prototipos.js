function Persona() {
	this.nombre = "Juan";
	this.apellido = "Mendoza";
	this.edad = 30;
	this.pais = "Costa Rica";
	/*this.imprimirPersona = function() {
		return this.nombre + " " + this.apellido + "(" + this.edad + ")";
	}*/
}

Persona.prototype.imprimirPersona = function() {
	return this.nombre + " " + this.apellido + "(" + this.edad + ")";
}

Number.prototype.esPositivo = function() {
	if (this > 0) {
		return true;
	} else {
		return false;
	}
}

var juan = new Persona();

console.log(juan);
console.log(juan.pais);
console.log(juan.imprimirPersona());