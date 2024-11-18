function saludar(nombre = 'Desconocido', apellido = '') { 
    console.log( `Hola ${nombre}  ${apellido} ` );
}
saludar('Juan', 'De la torre'); 
saludar('Juan');

saludar();