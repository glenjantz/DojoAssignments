//pg 22
//Given an array arr and a number num, mulitply all values in arr by num and return the changed array arr.
function scale(arr, num){
  for(var i = 0;i<arr.length;i++){ //loop through the array
    arr[i] = arr[i] * num  //multiply by num
  }
  return arr  //return the arr
}
console.log(scale([1,2,3,4,5], 2))
