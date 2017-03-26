//Build a function that takes array of numbers. The function should print second-to-last value in the array, and return first odd value in the array.
function printonereturnanother(arr){
  if(arr.length >=2){
    console.log(arr[arr.length - 2]);
  }
  else{
    console.log("array isnt long enough")
  }
  for(var i=0;i<=arr.length;i++){
    if(arr[i] < 0){
      return arr[i]
    }
    else{
      return "No negatives"
    }
  }
}
console.log(printonereturnanother([-1,2,3,4]))
