/* Funcion anonima */
(function() {
	
	var a = 10;
	
	console.log(a);
	
	function cambiarA() {
		a = 20;
	}

	cambiarA();
	
	console.log(a);	
})();

function ejecutarFuncion(fn) {
	if (fn() === 1) {
		return true;	
	} else {
		return false;
	}
};




/* Funcion anonima creada en el momento de llamar a la funcion ejecutarFuncion. 
La funcion anonima se envia como argumento.*/
console.log(
	ejecutarFuncion(function() {
		console.log("Funcion anonima ejecutada!");
		return 1;
	})
);


