//Create a function that accepts an array. Every time that array has three odd values in a row,
// print "That’s odd!" Every time the array has three evens in a row, print "Even more so!"
function evensandodds(arr){
  var oddcount = 0;
  var evencount = 0;
  for(var i = 0; i < arr.length; i++){
    if(arr[i] % 2 == 0){
      evencount += 1;
    }
    if(arr[i] % 2 != 0){
      oddcount += 1;
    }
    if(oddcount % 3 == 0 && oddcount != 0){
      oddcount = 0;
      console.log("That's odd!");
    }
    if(evencount % 3 == 0 && evencount != 0){
      evencount = 0;
      console.log("That's even!");
    }
  }
}
evensandodds([1,2,3,4,5,6,7,8,9,10,11]);
