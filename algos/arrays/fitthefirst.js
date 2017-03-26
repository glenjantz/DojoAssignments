//Your function should accept an array. If the value at [0] is greater than array’s length, print "Too big!";
// if the value at [0] is less than array’s length, print "Too small!"; otherwise print "Just right!".
function fitthefirst(arr){
  if(arr[0] > arr.length){
    console.log("Too big!");
  }
  else if(arr[0] < arr.length){
    console.log("Too small!");
  }
  else{
    console.log("Just right!");
  }
}
fitthefirst([1]);
fitthefirst([1,2]);
fitthefirst([3,2]);
