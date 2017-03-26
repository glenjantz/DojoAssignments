//Return the given array, after setting any negative values to zero.
function zeroout(arr){
  if(arr.length > 0){
    for(var i=0;i<arr.length;i++){
      if(arr[i] < 0){
        arr[i] = 0;
      }
    }
    return arr
  }
  else{
    console.log("array has no values");
  }
}
zeroout([]);
console.log(zeroout([1,2,3,4,5]));
console.log(zeroout([-1,-2,-3,-4,5]));
