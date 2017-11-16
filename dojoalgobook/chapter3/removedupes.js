//pg 38
//given a sorted array, remove duplicate values. Because array elements are already in order, all duplicate values will be grouped together.
// As with all these array challenges do this without using built in array methods
function removeDupes(arr){
  for(var i = arr.length-1;i>0;i--){ //loop from the end of the array to the 1st index
    if(arr[i] == arr[i-1]){ //check if the idx is == the previous index
      if(i == arr.length-1){ //if its the last idk just pop
        arr.pop()
      }else{
        for(var z = i;z<arr.length-1;z++){ //otherwise loop through and swap it to the end and pop it
          var temp = arr[z];
          arr[z] = arr[z+1];
          arr[z+1] = temp;
        }
        arr.pop()
      }
    }
  }
  return arr //return the array
}
console.log(removeDupes([1,1,2,3,3,4,5,5,5]))
