//pg 79
//return the balance index where sums are equal on either side(exclude its own value). return -1 if none exist.
//ex: [-2,5,7,0,3] -> 2, but [9,9] -> -1
function balanceindex(arr){
  leftsum = 0;  //variable to compare the left of the index
  rightsum = 0;  //variable to compare the right of the index
  for(var i =1;i<arr.length-1;i++){ // loop starting at index 1 to the 2nd to last  i  is the index
    for(var j=i-1;j>=0;j--){ //update leftsum
      leftsum += arr[j];
    }
    for(var z=i+1;z<arr.length;z++){  //update rightsum
      rightsum += arr[z];
    }
    if(leftsum == rightsum){  //check if balanced
      return i  //return the index
    }
    leftsum = 0;    //update sums
    rightsum = 0;
  }
  return -1
}
console.log(balanceindex([-2,5,7,0,3]))
