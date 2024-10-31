const carritoV4 = [
    { nombre: 'Monitor 27 pulgadas', precio: 500 },
    { nombre: 'Teclado', precio: 28 },
    { nombre: 'Iphone', precio: 800 },
    { nombre: 'Tablet', precio: 200 }
]

for (let i = 0; i < carritoV4.length; i++) {
    console.log(`${carritoV4[i].nombre} - Precio: ${carritoV4[i].precio}`);
}

carritoV4.forEach( function(producto) {
    console.log(`${producto.nombre} - Precio: ${producto.precio}`);
})