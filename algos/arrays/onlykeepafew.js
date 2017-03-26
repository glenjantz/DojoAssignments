//Stan learned something today: that reducing an array’s
//.length immediately shortens it by that amount.
//Given array arr and number X, remove all except the last X elements,
//and return arr (changed and shorter). Given ([2,4,6,8,10],3),
// change the given array to [6,8,10] and return it.
function onlykeepthelastfew2(arr,x){
  if(arr.length > x){
    while(arr.length != x){
      for(var i = 0; i < arr.length - 1; i++){
        var temp = arr[i];
        arr[i] = arr[i+1];
        arr[i+1] = temp;
      }
      arr.pop();
    }
    return arr
  }
  else{
    return arr
  }
}
// console.log(onlykeepthelastfew2([2,4,6,8,10],3));
console.log(onlykeepthelastfew2([2,3,4,5],3));
