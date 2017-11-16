//pg 29
// make generateCoinChance(cents). accept a number of american cents, compute and print how to represent that ammount with the smallest amount of coins.
// common ammerican coins are pennies nickles dimes and quarters
function generateCoinChange(cents){
  var quarters = Math.floor(cents/25);  //set quarters to how many quarters can be made from cents
  cents = cents - (quarters * 25)  //remove the amount of cents from the quarters
  var dimes = Math.floor(cents/10); //set dimes to how many dimes can be made with the remaining cents
  cents = cents - (dimes * 10);  //remove the amount of cents from the dimes
  var nickles = Math.floor(cents/5) //set nickles to how many nickles can be made with the remaining cents
  cents = cents - (nickles * 5); //remove the amount of cents from the dimes
  var pennies = cents   //set pennies to remaining cents
  var coinchange = {quarters: quarters, dimes: dimes, nickles: nickles, pennies: pennies} //return them all in an object
  return coinchange
}

console.log(generateCoinChange(116))
