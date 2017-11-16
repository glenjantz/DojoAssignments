//pg 81
//remove array duplicates. do not alter original. return new array with results stable(original order), for [1,2,1,3,4,2] return [1,2,3,4]
function removedupes(arr){
  for(var i =0;i<arr.length-1;i++){
    for(var j=i+1;j<arr.length;j++){
      if(arr[j] == arr[i]){
        arr.splice(j,1)
      }
    }
  }
  return arr
}
console.log(removedupes([1,2,1,3,4,2]))
