//Just the Facts, ma'am. Factorials, that is. Write a function
//  factorial(num) that, given a number, returns the product
//  (multiplication) of all positive integers from 1 up to number
//  (inclusive).
//
// Example: factorial(3) = 6 (or 1 * 2 * 3); factorial(5) = 120
// (or 1 * 2 * 3 * 4 * 5).

function factorial(num){
  var sum = 1;
  while(num > 0){
    sum = sum * num;
    num = num - 1;
  }
  return sum
}
console.log(factorial(5))
