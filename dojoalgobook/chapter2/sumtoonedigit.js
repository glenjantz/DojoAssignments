//pg 30
// implement sumToOne(num) that sums a given integers digits  repeatedly until the sum is only one digit. return that one digit result.
//ex: sumtoOne(928) returns 1 because 9+2+9 = 19 then 1+9 = 10 and then 1+0 = 1
function sumToOne(num){
  var sum = 0;
  while(num > 9){ //loop until only 1 digit is left
    var array = String(num).split("")  //make an array where each index is one digit of the num
    console.log(array)
    for(var i = 0;i<array.length;i++){ //loop through the array adding each index to sum
      sum = sum + Number(array[i])
    }
    num = sum //set the num to sum and reset sum for the next loop
    sum = 0
  }
 return num
}
console.log(sumToOne(529))
