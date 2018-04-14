try {
	throw new Error('Nombre Error');
}
catch (e) {
	registroError(e);
	console.log("e: " + e);
	console.log("e.name: " + e.name);
	console.log("e.message: " + e.message);
}
finally {
	console.log("finalmente");
}

function registroError(e) {
	var ahora = new Date();
	console.log("Se registro un error: ", e, "a las ", ahora.getTime());
}