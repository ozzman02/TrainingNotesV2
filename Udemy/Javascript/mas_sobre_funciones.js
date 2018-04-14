/* Todas las funciones son objectos por eso se le pueden definir atributos y metodos */

function a() {
	console.log("Funcion a");
}

a();

a.nombre = "Maria";
a.direccion = {
	pais: "Costa Rica",
	ciudad: "San Jose",
	edificio: {
		piso: "8vo",
		nombre: "Edificio principal"
	}
}

/* muestra el uso de this */
var persona = {
	nombre: "Maria",
	apellido: "Dubon",
	imprimirNombre: function() {
		console.log(this); // this apunta al objecto persona
		console.log(this.nombre + " " + this.apellido);
	},
	direccion: {
		pais: "Costa Rica",
		obtenerPais: function() {
			console.log(this); //this apunta al objecto direccion
			console.log("La direccion es en " + this.pais);
			var self = this; // self apunta al objeto direccion
			var nuevaDireccion = function() {
				console.log(this); // this apunta al objecto global window
				console.log(self);
				console.log("La direccion es en " + self.pais);
			}
			nuevaDireccion();
		}
	}
};

persona.imprimirNombre();
persona.direccion.obtenerPais();