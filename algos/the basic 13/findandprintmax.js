//Given an array, find and print its largest element.

function largestinarray(arr){
  if(arr.length > 0){
    var largest = arr[0];
    for(var i = 0;i<arr.length;i++){
      if(arr[i] > largest){
        largest = arr[i];
      }
    }
    console.log(largest);
  }
  else{
    console.log("array has no values")
  }
}
largestinarray([1,2,3,4,5]);
largestinarray([]);
