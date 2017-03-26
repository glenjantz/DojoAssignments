//Square each value in a given array, returning that same array with changed values.
function squares(arr){
  if(arr.length > 0){
    for(var i=0;i<arr.length;i++){
      arr[i] *= arr[i];
    }
    return arr
  }
  else{
    console.log("array has no values");
  }
}
console.log(squares([1,2,3,4,5]));
squares([]);
