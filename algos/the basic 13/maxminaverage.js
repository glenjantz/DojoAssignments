//Given an array, print the max, min and average values for that array.

function maxminavg(arr){
  if(arr.length > 0){
    var max = arr[0];
    var min = arr[0];
    var sum = arr[0];
    if(arr.length > 1){
      for(var i = 1;i < arr.length; i++){
        if(arr[i] > max){
          max = arr[i];
        }
        if(arr[i] < min){
          min = arr[i];
        }
        sum += arr[i];
      }
      console.log(max,min,sum/arr.length);
    }
    else{
      console.log(max,min,arr[0]);
    }
  }
  else{
    console.log("array has no values");
  }
}

maxminavg([1,2,3])
