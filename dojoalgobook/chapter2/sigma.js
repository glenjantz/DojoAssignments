//pg 28
// implement a function sigma(num) that given a number returns the sum of all positive integers up to number(inclusive) EX: sigma(3) = 6(or 1 + 2 + 3)
// sigma(5) = 15(or 1 + 2 + 3 + 4 + 5)
function sigma(num){
  var total = num //set a total starting with num
  for(var i = 1;i<num;i++){ //loop from 1 to num(uninclusive) adding each iteration to the total
    total = total + i
  }
  return total //return the total
}
console.log(sigma(5))
