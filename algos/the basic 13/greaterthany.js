//Given an array and a value Y, count and print the number of array values greater than Y.
function greaterthany(arr,y){
  if(arr.length > 0){
    var count = 0;
    for(var i = 0; i < arr.length; i++){
      if(arr[i] > y){
        count += 1;
      }
    }
    console.log(count + " values greater than y");
  }
  else{
    console.log("array has no values");
  }

}
greaterthany([1,2,3,4,5],1)
