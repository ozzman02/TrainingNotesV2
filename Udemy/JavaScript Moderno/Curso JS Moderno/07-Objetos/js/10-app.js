const productoV9 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true
}

const medidas = {
    peso: "1kg",
    medida: "1m"
}

console.log(productoV9);
console.log(medidas);

const resultado = Object.assign(productoV9, medidas);
console.log(resultado);
const resultado2 = { ...productoV9, ...medidas }
console.log(resultado2);