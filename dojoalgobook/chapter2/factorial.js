//pg 28
// write a function factorial(num) that given a number returns the product(multiplication) of all positive integers from 1 up to a number(inclusive)
// for example, factorial(3) = 6 (or 1*2*3); factorial(5) = 120 (or 1*2*3*4*5)

function factorial(num){
  var total = num; //set total to be num
  for(var i=1;i<num;i++){ //loop from 1 to num(uninclusive) and multiply each value to the total
    total = total * i
  }
  return total //return the total
}
console.log(factorial(5))
