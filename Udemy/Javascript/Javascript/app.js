function crearCookie(nombre, valor) {
	
	var hoy = new Date();

	hoy.setMonth(hoy.getMonth() + 1);

	valor = escape(valor);

	document.cookie = nombre + "=" + valor + ";expires=" + hoy.toUTCString() + ";";
}

function borrarCookie(nombre) {

	var hoy = new Date();

	hoy.setMonth(hoy.getMonth() - 1);

	document.cookie = nombre + "=x; expires=" + hoy.toUTCString() + ";";
}

function getCookie(nombre) {

	var cookies = document.cookie;
		
	//console.log(cookies);

	var cookieArray = cookies.split("; ");

	//console.log(cookieArray);

	for (var i = 0; i < cookieArray.length; i++) {
		var parArray = cookieArray[i].split("=");
		cookieArray[i] = parArray;
		if (parArray[0] === nombre) {
			return unescape(parArray[1]);
		}
	};

	//console.log(cookieArray);

	return undefined;
}

function escapeAndUnescape() {
	var demo = "123;123*123'123/ 123";
	console.log(demo);
	console.log(escape(demo));
	console.log(unescape(demo));
}


crearCookie("nombre","Oscar");
crearCookie("apellido","Santamaria");
crearCookie("correo","osantamaria@gmail.com");
crearCookie("direccion", "San José, Costa Rica");

console.log(getCookie("nombre"));
console.log(getCookie("apellido"));
console.log(getCookie("correo"));
console.log(getCookie("direccion"));

borrarCookie("nombre");
borrarCookie("apellido");
borrarCookie("correo");
borrarCookie("direccion");


