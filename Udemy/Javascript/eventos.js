
function evento(arg) {
	console.log("Me dispare");
	console.log(arg);
}

var objeto = document.getElementById("objDemo");

objeto.addEventListener("keypress", evento);

var objeto2 = document.getElementById("objDemo2");

objeto2.addEventListener("click", evento);