//pg38
//given array and an index into array remove and return the array value at that index. do this without using built in array methods except pop().
// think of popfront(arr) as equivalent to removeat(arr,0)

function removeAt(arr,idx){
  for(var i = idx;i<arr.length-1;i++){ //loop through the array starting from the given idx
    var temp = arr[i] //swap the idk value forward each iteration until its the last index
    arr[i] = arr[i + 1]
    arr[i + 1] = temp
  }
  arr.pop() //remove it
  return arr //return the array
}
console.log(removeAt([0,1,2,3,4],3))
