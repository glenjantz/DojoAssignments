//pg38
//swap positions of succesive pairs of values of given array. if length is odd do not change the final element.
//for [1,2,3,4] return [2,1,4,3]. for example, change input ['brendan',true,42] to [true,'brendan',42] as with all array challenges
// do this without using any build in array methods

function swappairs(arr){
  for(var i = 0;i<arr.length-1;i++){ //loop through the array to the 2nd to last index
    var temp = arr[i]; //swap arr[i] and arr[i] +1
    arr[i] = arr[i+1];
    arr[i+1] = temp;
    i+=1 //skip 1 index so "pairs" are swapped
  }
  return arr //return the array
}
console.log(swappairs([1,2,3,4]))
