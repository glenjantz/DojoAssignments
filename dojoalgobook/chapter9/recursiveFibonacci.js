//pg 101
// write rFib(num). recursively compute and return numth fibonacci value. As earlier, treat first two (num = 0, num = 1)
//fibonacci vals as 0 and 1. Examples rFib(2) = 1(0+1); rFib(3) = 2 (1+1) rFib(4) = 3(1+2) rFib(5) = 5(2+3) rFib(3.5) = rFib(3) = 2
// rFib(-2) = 0
function rFib(num){
  if(num == 0){ //there is no 0 in fibonacci
    return 0
  }
  else if(num == 1){ //base case
    return 1
  }
  else if(num == 2){  //second base case
    return 1
  }
  else if(num % 1 > 0){
    return rFib(Math.floor(num))  //floor any non whole number
  }
  else{
    return rFib(num - 1) + rFib(num - 2)   //start the call stack until base cases are reached
  }
}
console.log(rFib(6))
