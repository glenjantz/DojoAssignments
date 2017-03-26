//Analyze an array’s values and print the average.

function average(arr){
  if(arr.length > 0){
    var sum = arr[0];
    for(var i = 1;i<arr.length;i++){
      sum += arr[i];
    }
    console.log(sum/arr.length);
  }
  else{
    console.log("array has no values")
  }
}
average([1,2,3,4,5]);
average([1]);
average([]);
