const productoV10 = {
    nombre: "Monitor de 20 pulgadas",
    precio: 300,
    disponible: true,
    mostrarInfo: function() { 
        console.log(`El producto: ${this.nombre} tiene un precio de: ${this.precio}`);
    }
}

productoV10.mostrarInfo();
