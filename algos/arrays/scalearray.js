//Given an array arr and a number num, multiply all values
// in arr by num, and return the changed array arr.
function scalearray(arr,num){
  for(var i = 0;i<arr.length;i++){
    arr[i] *= num;
  }
  return arr
}
console.log(scalearray([1,2,3,4],2));
console.log(scalearray([],2));
