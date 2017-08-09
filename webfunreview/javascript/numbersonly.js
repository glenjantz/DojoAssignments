// Make a function that copies an array, ONLY accepting the items that are numbers.
// IT SHOULD RETURN A NEW ARRAY
// ex:
// var newArray = numbersOnly([1, "apple", -3, "orange", 0.5]);
// // newArray is [1, -3, 0.5]
// Copy
// HINT
// Use typeof to determine type (ex: typeof 24 === "number" would be true)
// Bonus (Only If You Have Time):
// Make a second function that removes them from the given array. (instead of copying to a new array)
// Do you need to return the array?
function copyme(arr){
  var newarr = [];
  for(var i =0;i<arr.length;i++){
    if(typeof arr[i] == "number"){
      newarr.push(arr[i]);
    }
  }
  // console.log(newarr)
  return newarr
}
// copyme([1,2,3,"one","two","three"])

function copymetwo(arr){
  for(var i = 0; i < arr.length; i++){
    if(typeof arr[i] != "number"){
      arr.splice(i,1)
      i--
    }
  }
  console.log(arr)
  return arr
}
copymetwo([1,2,3,"sdfg","dfg","dfg","seven","five"])
