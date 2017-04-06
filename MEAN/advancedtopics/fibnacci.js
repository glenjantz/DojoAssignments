function fib() {
 var prev = 0;
 var curr = 1;
 function nacci() {
   console.log(curr);
   var temp = prev;
   prev = curr;
   curr = curr + temp;
 }
 return nacci
}
var fibCounter = fib();
fibCounter()
fibCounter()
fibCounter()
fibCounter()
fibCounter()
fibCounter()
