//Write a function that accepts any array, and returns a new array with the array values that are greater than its 2nd value.
 //Print how many values this is. What will you do if the array is only one element long?
function greaterthansec(arr){
  var arr2 = [];
  for(var i = 0;i<=arr.length;i++){
    if(arr.length == 1){
      return arr[0];
    }
    else if(arr[i] > arr[1]){
      arr2.push(arr[i]);
    }
  }
  return arr2
}
console.log(greaterthansec([1]));
console.log(greaterthansec([1,2,3,4]));
