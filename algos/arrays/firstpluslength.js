//Given an array, return the sum of the first value in the array, plus the array’s length. What happens if the array’s first value is not a number, but a string (like "what?") or a boolean (like false).
function firstpluslength(arr){
  return arr[0] + arr.length
}
console.log(firstpluslength([1,2,3,4,5])); //adds integers
console.log(firstpluslength(["hello",2,3,4,5])); //concats str + int
console.log(firstpluslength([false,2,3,4,5])); //ignores bool
