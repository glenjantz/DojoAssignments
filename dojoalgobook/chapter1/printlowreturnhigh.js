//pg 22
//create a function that takes an array of numbers. the function should print the lowest value in the array and return the highest value in the array

function printlowreturnhigh(arr){
 var lowest = arr[0]
 var highest = arr[0]
  for(var i = 0;i<arr.length;i++){ //loop through  the array and find the lowest and highest values
    if(arr[i] < lowest){
      lowest = arr[i]
    }
    if(arr[i] > highest){
      highest = arr[i]
    }
  }
  console.log(lowest)  //print the lowest
  return highest   //return the highest
}

console.log(printlowreturnhigh([-1,-2,2,3]))
