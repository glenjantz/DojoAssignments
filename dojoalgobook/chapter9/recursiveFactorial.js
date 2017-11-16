//pg 99
//given num, return the product of ints from 1 up to num. if less than 0 treat as 0. if not integer, truncate.
function rFactorial(num){
  if(num <= 0){  //if <= 0 return 0
    return 0
  }
  else if(num == 1){   //base case when num reaches 1
    return 1
  }
  else if(num % 1 > 0){   //check for non whole numbers
    return rFactorial(Math.floor(num))  //floor it
  }
  else{
    return num * rFactorial(num - 1) //start call stack
  }
}
console.log(rFactorial(5))
//results in return 5 * rfac(4) -> 5*24 -> 120   or (1*2*3*4*5)
// return 4 * rfac(3) -> 4*6 = 24
//return 3 * rfac(2) -> 3*2 = 6
//return 2 * rfac(1) -> 2*1 = 2
//return 1
