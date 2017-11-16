//pg38
// given an array and an additional value insert this value at the beginning of the array. do this without using any built in array methods.
function pushfront(arr,num){
  arr.push(num); //add the num to the array
  for(var i = arr.length-1;i>=1;i--){ //loop from the end of the array to the beginning swapping i and i-1 each iteration
    var temp = arr[i]
    arr[i] = arr[i-1]
    arr[i-1] = temp
  }
  return arr // return the array
}
console.log(pushfront([1,2,3,4,5,6],0))
