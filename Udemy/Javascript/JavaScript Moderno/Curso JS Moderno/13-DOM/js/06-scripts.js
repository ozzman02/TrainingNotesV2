const encabezado2 = document.querySelector('.contenido-hero h1').textContent;
const encabezado = document.querySelector('.contenido-hero h1');
console.log(encabezado);

console.log(encabezado.innerText);      // No encuentra el texto si CSS visibility: hidden
console.log(encabezado.textContent);    // Si lo encuentra
console.log(encabezado.innerHTML);      // Trae el html

document.querySelector('.contenido-hero h1').textContent = 'nuevo heading';


const imagen = document.querySelector('.card img');
imagen.src = 'img/hacer2.jpg';