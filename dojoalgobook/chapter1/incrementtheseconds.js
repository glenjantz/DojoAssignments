//pg 22
//given an array of numbers arr, add 1 to every second element, specifically those whose index is odd (arr[1], arr[3], arr[5]).
// afterward, console.log each array value and return arr

function inctheseconds(arr){
  for(var i=1;i<arr.length;i+=2){ //loop through the array starting at 1 and skipping one index each iteration and adding 1
    arr[i] = arr[i] + 1
    console.log(arr[i])
  }
  return arr //return the changed array
}
console.log(inctheseconds([0,1,2,3,4,5,6]))
