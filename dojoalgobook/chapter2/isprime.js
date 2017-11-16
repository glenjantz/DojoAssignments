//pg 30
// return whether a given integer is prime. prime numbers are only evenly divisble by themselves and 1.
// many highly optimized solutions exist but for now just create one that is easy to understand and debug
function isprime(num){
  for(var i = 2;i<num;i++){ //loop starting from 2 up to the num
    if(num % i == 0){  //check if it is divisible and return outcome
      return false
    }
  }
  return true
}
console.log(isprime(16))
