const numbersData = [10, 20, 30, 40, 50];
const [ first, second, third ] = numbersData;
const [, , tercero] = numbersData;
const [ primero, segundo, ...thirdPlace ] = numbersData;

console.log(first);
console.log(tercero);
console.log(thirdPlace);
