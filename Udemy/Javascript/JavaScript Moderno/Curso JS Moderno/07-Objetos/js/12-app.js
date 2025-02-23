// Object literal
const productoV11 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true,
}

// Object constructor
function Producto(nombre, precio) {
    this.nombre = nombre;
    this.precio = precio;
    this.disponible = true;
}

const productoV12 = new Producto("Tablet", 200);

console.log(productoV11);
console.log(productoV12);