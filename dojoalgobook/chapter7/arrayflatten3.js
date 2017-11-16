//pg81
//flatten a given array, eliminating nested and empty arrays. work in place. do not alter order.
function arrayflatten3(arr){
  for(var i =0;i<arr.length;i++){   //loop to the end of the arr
    var count = 0;  //counter to update i after flattening an array
    if(Array.isArray(arr[i])){  //check if index is an array
      for(var j=arr[i].length-1;j>=0;j--){  //loop and push all values to the end
        arr.splice(i+1,0,arr[i][j])
        count++  //update count
      }
      arr.splice(i,1)  //remove the array
    }
    i+= count;  //update i
  }
  return arr
}
console.log(arrayflatten3([1,[2,3],4,[]]))
