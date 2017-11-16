//pg 74
//given a stack containing integers, switch successive pairs of values strting at the bottom of the stack. if there is an odd number of values
// the top value is unaffected. for example: [1,2,3,4,5,6,7] should become [1,3,2,5,4,7,6]

function switchpairs(arr){
  if(arr.length === 0){
    return false
  }
  var start;
  if(arr.length % 2 ==0){
    start = 0;
  }else{
    start = 1
  }
  for(var i = start;i<arr.length -1;i++){
    if(arr[i] == arr[i+1]-1){
      var temp = arr[i];
      arr[i] = arr[i+1];
      arr[i+1] = temp;
    }
  }
  return arr
}

console.log(switchpairs([1,2,3,4,5,6]))
