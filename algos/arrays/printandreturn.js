//Your function will receive an array with two numbers. Print the first value, and return the second.
function printandreturn(arr){
  console.log(arr[0]);
  return arr[arr.length-1]
}
console.log(printandreturn([1,2]));
