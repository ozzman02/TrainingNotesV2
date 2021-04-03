var hoy = new Date();

var fMilli = new Date(1);

/* anio, mes, dia, hora, min, seg, mil */
var fFija = new Date(2017, 5, 3, 22, 10, 00, 1);

console.log(hoy);
//console.log(fMilli);
//console.log(fFija);

/*Retorna el anio*/
console.log(hoy.getFullYear());

/*Retorna el dia*/
console.log(hoy.getDate());

/*Retorna las horas*/
console.log(hoy.getHours());

/*Retorna los segundos*/
console.log(hoy.getSeconds());

/*Retorna los milisegundos*/
console.log(hoy.getMilliseconds());

/*Retorna el mes. Los meses comienzan en 0*/
console.log(hoy.getMonth());

/*Representacion numerica en milisegundos de una fecha*/
console.log(hoy.getTime());


var inicio = new Date();

for (var i = 0; i <= 15000; i++) {
	console.log("Algo...");
}

var fin = new Date();

var duracion = fin.getTime() - inicio.getTime();

console.log(duracion, "milisegundos");
console.log(duracion/1000, "segundos");