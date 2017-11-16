//pg 22
//build a function that accepts an array. Return a new array with all values except the first adding 7 to each. do not alter the original array.

function seventomost(arr){
  var temparr = arr; //create second array
  for(var i = 1;i<temparr.length;i++){ //loop through array starting after the first index
    temparr[i] = temparr[i] + 7  //add seven
  }
  return temparr  // return new array
}
console.log(seventomost([1,2,3,4,5,6]))
