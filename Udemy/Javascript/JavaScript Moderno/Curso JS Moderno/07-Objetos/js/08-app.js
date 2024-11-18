"use strict";

const productoV7 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true
}

// No permite modificar ni agregar propiedades
Object.freeze(productoV7);

console.log(productoV7);
console.log(Object.isFrozen(productoV7));