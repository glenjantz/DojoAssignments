//pg 22
//Given an array, write a function that reverses values in-place. example: reverse([3,1,6,4,2]) returns the same array containing [2,4,6,1,3]
function reverse(arr){
  for(var i =0;i<arr.length/2;i++){ //loop through the array.length/2 swapping i and last-i index
    var temp = arr[i];
    arr[i] = arr[arr.length - 1 - i]
    arr[arr.length - 1 - i] = temp
  }
   return arr //return the swapped array
}
console.log(reverse([3,1,6,4,2]))
