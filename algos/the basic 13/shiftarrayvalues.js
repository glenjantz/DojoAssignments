//Given an array, move all values forward by one index, dropping the first and leaving a '0' value at the end.

function shift1(arr){
  for(var i = 0;i<arr.length - 1;i++){
    arr[i] = arr[i+1];
  }
  arr[arr.length - 1] = 0;
  console.log(arr)
}
// [1,2,3,4,5]
// [2,3,4,5,0]
shift1([1,2,3,4,5])
