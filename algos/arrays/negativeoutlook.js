// Given an array, create and return a new one containing all the values of the provided array,
//  made negative (not simply multiplied by -1). Given [1,-3,5], return [-1,-3,-5].
function negativeoutlook(arr){
  var newarr = [];
  for(var i = 0; i < arr.length; i++){
    if(arr[i] >= 0){
      arr[i] *= -1
      newarr.push(arr[i]);
    }
    else{
      newarr.push(arr[i]);
    }
  }
  return newarr
}
console.log(negativeoutlook([-1,2,3,-4,5]));
