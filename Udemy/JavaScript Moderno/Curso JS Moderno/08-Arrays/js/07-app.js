const carritoV3 = []; 

const productV1_1 = {
    nombre: "Monitor 32 Pulgadas",
    precio: 400
}

const productV2_1 = {
    nombre: "Celular",
    precio: 800
}

const productV3_1 = {
    nombre: "Teclado",
    precio: 50
}

const productV4_1 = {
    nombre: "Celular2",
    precio: 60
}

const productV5_1 = {
    nombre: "Teclado 2",
    precio: 30
}


carritoV3.push(productV1_1);      // agrega al final
carritoV3.push(productV2_1);
carritoV3.unshift(productV3_1);  // agrega al inicio
carritoV3.push(productV4_1);
carritoV3.push(productV5_1);



console.table(carritoV3);

carritoV3.pop();            // elimina el ultimo
console.table(carritoV3);

carritoV3.shift(carritoV3); // elimina el primero
console.table(carritoV3);

carritoV3.splice(1, 1);     // elimina 1 elemento a partir de la posicion 1
console.table(carritoV3);