//pg 74
//mirror a given stacks existing values onto itself in reverse order. Sending Stack [1,3,5,7] to your function should change it to [1,3,5,7,7,5,3,1]
function mirror(arr){
  for(var i = arr.length-1;i>=0;i--){ //loop from end to start and push each value back into the array
    arr.push(arr[i]);
  }
  return arr
}
console.log(mirror([1,3,5,7]))
