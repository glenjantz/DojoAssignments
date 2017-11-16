//pg 80
//given a sorted array and value, return whether the array contains the value. Do not sequentially iterate the array.
//instead 'divide and conquer', taking advantage of the fact that the array is sorted.

function BinarySearch(arr,val){
  var first = 0;                                //3 variables to divide the array with
  var mid = Math.floor(arr.length/2)
  var last = arr.length-1
  while(first<=last){    //loop until all values have been checked
    if(arr[mid] == val){    //check for value
      return true
    }
     else if(val > arr[mid]){  //check to move checked values to the right half
      first = mid+1;
    }
    else{                 //check to move checked values to the left half
      last = mid-1;
    }
    mid = Math.floor((first+last)/2)      //update mid each iteration
  }
  return false
}
3<1
1>3


console.log(BinarySearch([1,2,3,4,5,6],8))
