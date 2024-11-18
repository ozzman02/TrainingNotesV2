const navegacion = document.querySelector('.navegacion');
console.log(navegacion);
console.log(navegacion.childNodes);
console.log(navegacion.children);
console.log(navegacion.firstElementChild);
console.log(navegacion.lastElementChild);

console.log(navegacion.children[1].nodeName);
console.log(navegacion.children[1].nodeType);

const card = document.querySelector('.card');
card.children[1].children[1].textContent = 'Nuevo Heading - Traversing the DOM';
console.log(card.children[1].children[1].textContent);

card.children[0].src = 'img/hacer2.jpg';
console.log(card.children[0]);


// Traversing from child to parent
console.log(card.parentNode);
console.log(card.parentElement);
console.log(card.parentElement.parentElement.parentElement);

console.log(card.nextElementSibling);
console.log(card.nextElementSibling.nextElementSibling);

const ultimoCard = document.querySelector('.card:nth-child(4)');
console.log(ultimoCard.previousElementSibling);