//page 22
//Given an array, write a function that changes all positive numbers in the array to "big".
// Example: makeItBig([-1,3,5,-5]) returns that same array changed to [-1,"big","big",-5]

function makeItBig(array){
  for(var i = 0;i<array.length;i++){ //loop through the array
    if(array[i] > 0){ //if its greater than 0 change to "big"
      array[i] = "big"
    }
  }
  return array //return the altered array
}

console.log(makeItBig([-1,3,-5,5]))
