const carrito = []; 

const product = {
    nombre: "Monitor 32 Pulgadas",
    precio: 400
}

const product2 = {
    nombre: "Celular",
    precio: 800
}


const product3 = {
    nombre: "Teclado",
    precio: 50
}


carrito.push(product);      // agrega al final
carrito.push(product2);
carrito.unshift(product3);  // agrega al inicio

console.table(carrito);