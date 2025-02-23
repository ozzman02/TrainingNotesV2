const carritoV5 = [
    { nombre: 'Monitor 27 pulgadas', precio: 500 },
    { nombre: 'Teclado', precio: 28 },
    { nombre: 'Iphone', precio: 800 },
    { nombre: 'Tablet', precio: 200 }
];

// No crea un nuevo arreglo
carritoV5.forEach( function(producto) {
    console.log(`${producto.nombre} - Precio: ${producto.precio}`);
});

// Crea un nuevo arreglo
const nuevoCarrito = carritoV5.map( function(producto) {
    return `${producto.nombre} - Precio: ${producto.precio}`;
});

console.log(nuevoCarrito);

