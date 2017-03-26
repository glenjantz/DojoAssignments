//Given array, swap first and last, third and third-tolast,
 // etc. Input[true,42,"Ada",2,"pizza"] becomes ["pizza",42,"Ada",2,true].
 //  Change [1,2,3,4,5,6] to [6,2,4,3,5,1].
function swaptomid(arr){
  if(arr.length >=6){
    var temp = arr[0];
    arr[0] = arr[arr.length - 1];
    arr[arr.length -1] = temp;
    temp = arr[2];
    arr[2] = arr[arr.length - 3];
    arr[arr.length - 3] = temp;
  }
  else{
    if(arr.length > 2){
     var temp = arr[0];
     arr[0] = arr[arr.length - 1];
     arr[arr.length - 1] = temp;
    }
  }
  return arr
}
console.log(swaptomid([1,2,3,4,5,6]));
console.log(swaptomid([true,42,"ada",2,"pizza"]));
