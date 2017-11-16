//pg 79
//Write a function that returns whether the given array has a balance point between indicies, where ones sides sum is equal to the others.
//ex: [1,2,3,4,10] -> true but [1,2,4,2,1] -> false
function balancepoint(arr){
  var leftsum = 0;    //variable for the left side comparison
  var rightsum = 0;   //variable for the right side comparison
  for(var i=0;i<arr.length-1;i++){ //loop through the array to the 2nd to last value
    rightsum = 0;  //reset rightsum each iteration
    leftsum += arr[i];  //increment leftsum each iteration
    for(var j=i+1;j<arr.length;j++){  //second loop to get the rightsum value starting after i
      rightsum += arr[j];
    }
    if(leftsum == rightsum){ //check if they are "balanced"
      return true
    }
  }
  return false
}
console.log(balancepoint([1,2,4,2,1]))
