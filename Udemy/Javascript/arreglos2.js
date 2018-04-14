var arr = [
	true,
	{
		nombre: "Oscar",
		edad: 35
	},
	function() {
		console.log("Estoy dentro de un arreglo");
	},
	function(persona) {
		console.log(persona.nombre + " " + persona.edad);
	},
	[
		1,
		2,
		3,
		4,
		5,
		[
			"Juan",
			"Pedro",
			"Dilcia",
			function() {
				console.log(this);
			}
		]
	]
];


console.log(arr.length);
console.log(arr);
console.log(arr[0]);
console.log(arr[1].nombre + " " + arr[1].edad);
arr[2]();
arr[3](arr[1]);
console.log(arr[4][2]);
console.log(arr[4][5][1]);

var arr2 = arr[4][5];
console.log(arr2);
arr2[1] = "Pedrita!";
console.log(arr2);
console.log(arr);

arr2[3]();