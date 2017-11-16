//pg 29
//create threesfives() that adds values from 100 and 4000000 inclusive if that value is evenly divisible by 3 or 5 but not both display the final sum in the console
function threesfives(){
  var sum = 0 //set a sum
  for(var i = 100;i<=4000000;i++){ //loop from 100 to 4000000
    if((i % 3 == 0) && (i % 5 != 0) || (i % 3 != 0) && (i % 5 == 0)){ //check if its dibisible by 3 or 5 but not both
      sum = sum + i //add it to the sum
    }
  }
  return sum //return the total
}
console.log(threesfives())
