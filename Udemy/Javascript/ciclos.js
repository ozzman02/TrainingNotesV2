

function cicloWhile() {
	
	var i = 0;

	while (i < 10) {
		i++;
		if (i === 5 ) {
			continue;
			//break;
		}
		console.log(i);
	}

}

function cicloDoWhile() {

	var i = 0;

	do {
		i++;
		if (i === 5 ) {
			//continue;
			break;
		}
		console.log(i);
	} while (i < 10);

}

function cicloFor() {
	for (var i = 0; i < 10; i++) {
		if (i === 5) {
			continue;
			//break;
		}
		console.log(i);
	}
}

function cicloForIn() {
	
	var Persona = function() {
		this.nombre = "Oscar";
		this.apellido = "Pineda";
		this.edad = 35;
	}

	Persona.prototype.direccion = "San Jose";

	var persona = new Persona();

	for (prop in persona) {
		if (persona.hasOwnProperty(prop)) {
			console.log(prop, ":", persona[prop]);	
		}
	}
}

function cicloForIn2() {
	for (num in [1,2,3,4,5,6,7,8,9,10]) {
		/*num es el indice*/
		console.log(num);
	}

	[1,2,3,4,5,6,7,8,9,10, true, false, "Valor"].forEach(function(valor) {
		console.log(valor);
	});
}

function rotularCiclos() {

	for_principal:
		for (var i = 1; i <= 5; i++) {
			console.log("i", i);
			for_secundario:
				for (var j = 1; j <=5; j++) {
					console.log("j", j);
					for (var x = 1; x <= 5; x++) {
						console.log("x", x);
						break for_principal;
					}
				}
		}
}

//cicloWhile();

//cicloDoWhile();

//cicloFor();

//cicloForIn();

//cicloForIn2();

rotularCiclos();