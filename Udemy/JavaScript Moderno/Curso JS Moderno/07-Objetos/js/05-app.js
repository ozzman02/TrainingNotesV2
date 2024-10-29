const productoV4 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true,
    informacion: {
        medidas: {
            peso: "1KG",
            medida: "1m"
        },
        fabricacion: {
            pais: "China"
        }
    }
}

console.log(productoV4.informacion);
console.log(productoV4.informacion.fabricacion.pais);
console.log(productoV4.informacion.medidas.peso);
