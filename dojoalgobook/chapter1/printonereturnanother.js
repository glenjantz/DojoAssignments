//pg 22
//build a function that takes an array of numbers. The function should print the second-to-last value in the array and return the first odd value in the array.

function printonereturnanother(arr){
  console.log(arr[arr.length -2]) //print the second to last value in the array
  for(var i = 0;i<arr.length;i++){  //loop through the array to find the first odd and return it
    if(arr[i] % 2 != 0){
      return arr[i]
    }
  }
  return "no odds"
}
console.log(printonereturnanother([2,4,6]))
