//pg81
//flatten a given array, eliminating nested and empty arrays. work in place. Alter order if needed.
function arrayflatten2(arr){
  for(var i =0;i<arr.length;i++){   //loop to the end of the arr
    if(Array.isArray(arr[i])){  //check if index is an array
      for(var j=0;j<arr[i].length;j++){  //loop and push all values to the end
        arr.push(arr[i][j])
      }
      arr.splice(i,1)  //remove the array
    }
  }
  return arr
}
console.log(arrayflatten2([1,[2,3],4,[]]))
