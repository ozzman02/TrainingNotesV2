var arr = [5, 4, 3, 2, 1];

console.log(arr);
console.log(arr[0], arr[4], arr[5]);

/* Reverses the order of the elements in an array */
console.log(arr.reverse());

/* The map() method creates a new array with the results of calling a function for every array element.*/
arr = arr.map(function(elem) {
	elem *= elem;
	return elem;
}); 
console.log(arr);

arr = arr.map(Math.sqrt);
console.log(arr);

/* Joins all elements of an array into a string */
arr = arr.join("|");
console.log(arr);

/* The split() method is used to split a string into an array of substrings, and returns the new array. */
arr = arr.split("|");
console.log(arr);

/* Adds new elements to the end of an array, and returns the new length */
arr.push("6");
console.log(arr);

/* Adds new elements to the beginning of an array, and returns the new length */
arr.unshift("0");
console.log(arr);

/* Converts an array to a string, and returns the result */
console.log(arr.toString());

/* Removes the last element of an array, and returns that element */
var elementoEliminado = arr.pop();
console.log(arr, elementoEliminado);

/* Adds/Removes elements from an array */
arr.splice(1, 1);
console.log(arr);

arr.splice(1, 1, "10");
console.log(arr);

arr.splice(1, 0, "20", "30");
console.log(arr);

/* Selects a part of an array, and returns the new array */
arr = arr.slice(0, 2);
console.log(arr);