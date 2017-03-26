//Given array, write a function that reverses values, in-place.
//Example: reverse([3,1,6,4,2]) returns same array, containing [2,4,6,1,3].
function reversearr(arr){
  return arr.reverse()
}
// console.log(reversearr([1,2,3,7,8,9,10]));
// OR //
function reversearray(arr){
  var count = 1;
  for(var i=0;i<arr.length/2;i++){
    var temp = arr[i];
    arr[i] = arr[arr.length - count];
    arr[arr.length - count] = temp;
    count += 1;
  }
  return arr
}
console.log(reversearray([1,2,3,7,8,9]));
