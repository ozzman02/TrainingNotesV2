var mes = 2;

switch (mes) {
	case 1: 
		console.log("Enero");
		break;
	case 2: 
		console.log("Febrero");
		break;
	case 3: 
		console.log("Marzo");
		break;
	default:
		console.log("Cualquier otro mes");
}

var mes2 = undefined;

switch (mes2) {
	case (10>5) ? 40 : 1 : 
		console.log("Enero");
		break;
	case 2: 
		console.log("Febrero");
		break;
	case 3: 
		console.log("Marzo");
		break;
	case undefined: 
		console.log("Abril");
		break;
	default:
		console.log("Cualquier otro mes");
}