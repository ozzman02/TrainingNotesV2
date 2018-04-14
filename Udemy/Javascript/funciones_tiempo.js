function tiempo1() {
	setTimeout(function() {
		console.log("Paso un segundo");
	}, 1000);	
}


function tiempo2() {
	
	var segundos = 0;
	
	var interval = setInterval(function() {
		segundos++;
		console.log("seg ", segundos);
		if (segundos === 3) {
			clearInterval(interval);
		}
	}, 1000);

}

function tiempo3() {

	var juan = {
		nombre: "Juan",
		edad: 30,
		imprimir: function() {
			var self = this;
			setTimeout(function() {
				console.log(self);
				console.log(self.nombre, self.edad);	
			}, 1000);
		}
	};

	juan.imprimir();
}

tiempo3();