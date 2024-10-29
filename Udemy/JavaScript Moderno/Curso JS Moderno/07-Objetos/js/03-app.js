const productoV2 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true,
    imagen: "image.jpg"
}

productoV2.imagen2 = "imagen.jpg"

delete productoV2.disponible;

console.log(productoV2);
