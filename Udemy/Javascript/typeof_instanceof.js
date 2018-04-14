function identifica(param) {
	console.log(typeof param);
}

function identifica2(param) {
	if (typeof param == "function") {
		param();
	} else {
		console.log(param);
	}
}

function identifica3(param) {
	console.log(param instanceof Persona);
}

function Persona() {
	this.nombre = "Fernando";
	this.edad = 30;
}

var persona = new Persona();

identifica(1);
identifica(true);
identifica("Oscar")
identifica({});
identifica(persona);
identifica(function() {});

identifica2(function() {
	console.log("Soy anonima");
});

identifica2(2);

identifica2(persona);

identifica3(persona);
identifica3("oscar");