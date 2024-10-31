const carritoV2 = []; 

const productV1 = {
    nombre: "Monitor 32 Pulgadas",
    precio: 400
}

const productV2 = {
    nombre: "Celular",
    precio: 800
}

const productV3 = {
    nombre: "Teclado",
    precio: 50
}

let resultado = [...carritoV2, productV1];  // copia del carrito mas producto al final
resultado = [...resultado, productV2];      // producto al final
resultado = [productV3, ...resultado];      // producto al inicio

console.table(resultado);
console.log(carritoV2); // siempre vacio