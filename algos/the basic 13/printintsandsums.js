//Print integers from 0 to 255, and with each integer print the sum so far.
function printintsandsums(){
  var sum = 0;
  for(var i=0;i<=255;i++){
    console.log("this current number is " + i)
    sum += i
    console.log("the sum is " + sum)
  }
}
printintsandsums()
