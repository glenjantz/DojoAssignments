//pg 99
// write a recursive function that given a number returns a sum of integers from 1 to that number.
// ex rSigma(5) = 15 (1+2+3+4+5). rSigma(2.5) = 3 (1+2). rSigma(-1) = 0;
function rSigma(num){
  if(num <= 0){     // return 0 if anything under 0 is entered
    return 0
  }
  else if(num == 1){   //base case return 1 when num reaches 1
    return 1
  }
  else if(num % 1 > 0){     //floor the num if its not whole
    return rSigma(Math.floor(num))
  }
  else{
    return num + rSigma(num - 1)  //all other cases start the call stack until base case is reached
  }
}
console.log(rSigma(5))
//results in return 5+rSigma(4) -> 15 (5+10)
// return 4+rSigma(3) -> 10 (4+6)
// return 3+rSigma(2) -> 6 (3+3)
// return 2+rSigma(1) -> 3 (2+1)
// return 1
