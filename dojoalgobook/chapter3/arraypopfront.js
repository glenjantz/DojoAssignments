//pg38
//given array, remove and return the value at the beginning of the array. do this without using any built in array methods except pop()
function popfront(arr){
  for(var i = 0;i<arr.length-1;i++){ //loop through the array swapping i and i+1 until i is the last index
    var temp = arr[i]
    arr[i] = arr[i + 1]
    arr[i + 1] = temp
  }
  arr.pop() //remove the last index
  return arr //return the array
}
console.log(popfront([0,1,2,3]))
