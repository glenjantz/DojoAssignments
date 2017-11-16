//54
//given an array, return an object containing the arrayx max min and avg values.
function maxminavgobject(arr){
  var max = arr[0],
      min = arr[0],
      total = arr[0],
      avg;
      //set variables max min and total to arr[0]
  for(var i =1;i<arr.length;i++){ //loop through the array starting at index1 to the end
    if(arr[i] > max){ //check if index is > max if so update max
      max = arr[i]
    }
    if(arr[i] < min){ //check if index is < min if so update min
      min = arr[i]
    }
    total+= arr[i] //update the total for the avg variable later
  }
  avg = total/arr.length ///get the avg
  return {max: max, min: min,avg: avg} //return them all in an object
}
console.log(maxminavgobject([1,2,3,4,5]))
