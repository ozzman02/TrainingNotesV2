var objetoJS = {
	nombre: "Fernando",
	edad: 30,
	imprimir: function() {
		console.log(this.nombre, this.edad);
	}
};

console.log("Objeto literal: ", objetoJS);

/* Convierte objeto a formato json.
   Al convertir a json se pierde la funcion 
   por eso es importante el uso de prototipos.
*/
var jsonString = JSON.stringify(objetoJS);

console.log(jsonString);

/* Convierte json a objeto 
   Al convertir nuevamente a objeto la funcion
   no se recupera
*/
var objetoDesdeJson = JSON.parse(jsonString);

console.log(objetoDesdeJson);