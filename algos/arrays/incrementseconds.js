//Given an array of numbers arr, add 1 to every second element,
// specifically those whose index is odd (arr[1], [3], [5], etc). Afterward, console.log each array value and return arr.
function incrementsecond(arr){
  for(var i=0;i<arr.length;i++){
    if(i % 2 != 0){
      arr[i] = arr[i] + 1;
      console.log("the value is " + arr[i] + " and the index is " + i);
    }
  }
  return arr
}
incrementsecond([2,5,10,15,8]);
