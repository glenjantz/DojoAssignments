//pg38
// given an array, index and additional value, insert the value into array at given index.
// Do this without using built it array methods. you can think of pushfront(arr,val) as equivalent to insertat(arr,0,val)

function insertAt(arr,idx,num){
  arr.push(num) //add the num to the array
  for(var i = arr.length-1;i>idx;i--){ //loop from the end of the array until the index+1 swapping the values each iteration
    var temp = arr[i];
    arr[i] = arr[i-1];
    arr[i-1] = temp;
  }
  return arr //return the array
}
console.log(insertAt([1,2,3,5,6],3,4))
