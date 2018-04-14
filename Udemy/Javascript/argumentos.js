var arguments = 10;

function miFuncion(a, b, c, d) {
	/* 
		arguments does not correspond to the variable arguments,
		it corresponds to the function parameters.
	*/
	console.log(arguments);
}


function miFuncion2(a, b, c, d) {
	if (arguments.length !== 4) {
		console.error("La funcion necesita cuatro parametros");
		return;
	}
	console.log(a + b + c + d);
}

miFuncion(10, 20, 30, 40, {}, function(){});

miFuncion2(10, 20, 30);

miFuncion2(10, 20, 30, 40);