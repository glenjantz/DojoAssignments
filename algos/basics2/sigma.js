
// Implement function sigma(num) that given a number, returns the sum of
// all positive integers up to number (inclusive).

// Example: sigma(3) = 6 (or 1 + 2 + 3); sigma(5) = 15 (or 1 + 2 + 3 + 4 + 5).

function sigma(num){
  var sum = 0;
  while(num > 0){
    sum = sum + num;
    num = num - 1;
  }
  return sum
}
console.log(sigma(5));
