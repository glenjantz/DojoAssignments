//pg 42
//given arr and N, return the nth largest element where n-1 elements are larger. return null if needed.

function nthlarge(arr, n){
  if(n <= arr.length){ // n  has to be less than the length of the arr or it will cause an error
    for(var i = 0;i<arr.length;i++){ //loop through the array
      for(var j = i+1;j<arr.length;j++){ //loop through the array starting 1 value ahead of the first loop
        if(arr[i] < arr[j]){  //check if the first loop arr[i] against all of the values ahead of it
          var temp = arr[i];  //if so, swap them, at the end of both loops the array will be in order from highest to lowest
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    console.log(arr)
    return arr[n-1] //return arr[n-1]  now that the array is in order the nth larggest will always be arr[n-1]
  }else{
    return "not enough values"
  }
}
console.log(nthlarge([6,5,4,3,2,1],2))
