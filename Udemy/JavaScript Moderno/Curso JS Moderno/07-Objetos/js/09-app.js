"use strict";

const productoV8 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true
}

// No se puede agregar ni quitar propiedades pero se pueden modificar las existentes
Object.seal(productoV8);

console.log(productoV8);
console.log(Object.isSealed(productoV8));

productoV8.disponible = false;
console.log(productoV8);