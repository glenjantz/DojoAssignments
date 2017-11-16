//pg 81
//flatten a given array, eliminating nested and empty arrays. Do not alter it: return a new one retaining order.
//for [1,[2,3],4,[]] return [1,2,3,4]

function arrayflatten(arr){
  var newarr = [];       //returned array
  for(var i =0;i<arr.length;i++){  //loop through array to the end
    if(Array.isArray(arr[i])){   //check if index is an array
      if(arr[i].length == 0){   //check if empty
        continue
      }else{
        for(var j=0;j<arr[i].length;j++){   //push all values in the array into the new arr
          newarr.push(arr[i][j]);
        }
      }
    }else{
      newarr.push(arr[i])  //otherwise just push the value
    }
  }
  return newarr
}
console.log(arrayflatten([1,[2,3],4,[]]))
