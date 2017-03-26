//You are passed an array containing strings. Working within that same array, replace each string with a number – //the length of the string at previous array index – and return the array.
function previouslengths(arr){
  for(var i=arr.length - 1;i>=0;i--){

    if(arr.length > 1){
      if(i == 0){
        console.log("array index " + i + " has no - 1");
      }
      else{
        arr[i] = arr[i - 1].length;
      }

    }
    else{
      console.log("array only has 1 value");
    }
  }
  return arr
}
console.log(previouslengths(["hello","world","isnt","this","fun"]))
