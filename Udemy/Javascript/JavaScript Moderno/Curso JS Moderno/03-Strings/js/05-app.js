const anotherProduct = "Monitor 20 Pulgadas";
console.log(anotherProduct);
console.log(anotherProduct.replace('Pulgadas', '"'));
console.log(anotherProduct.replace('Monitor', 'Monitor Curvo'));
console.log(anotherProduct.slice(0, 10));
console.log(anotherProduct.slice(8));
console.log(anotherProduct.slice(2, 1)); // no hace nada, no corta hacia atras
console.log(anotherProduct.substring(0, 10));
console.log(anotherProduct.substring(2, 1)); // cambia el 1 por el 2

const usuario = "Juan";
console.log(usuario.substring(0, 1));
console.log(usuario.charAt(0));