//Create a function that accepts an array, and prints "yummy"
// each time one of the values is equal to "food". If no array elements are
// "food", then print "I'm hungry" once.
function alwayshungry(arr){
  var count = 0;
  for(var i=0;i<arr.length;i++){
    if(arr[i] == "food"){
      console.log("yummy");
      count += 1;
    }
  }
  if(count == 0){
    console.log("I'm hungry");
  }
}
alwayshungry([1,2,3,4]);
alwayshungry([1,2,"food"]);
alwayshungry([1,2,"food","food"]);
