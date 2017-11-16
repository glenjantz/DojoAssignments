//pg43
//lets create shuffle(arr). to efficiently shuffle a given arrays values. work in place. do you need to return anything for your function.
function shuffle(arr){
  for(var i = 0;i<arr.length;i++){ //loop through the array
    for(var z = 0;z<arr.length;z++){ //a second loop for guaranteed "shuffling"
      var random = getrand(arr)  //use helper function to get a random index each iteration
      var temp = arr[z];     // swap the random index with z each iteration
      arr[z] = arr[random];
      arr[random] = temp;
    }
  }
  return arr // return the arr
}
function getrand(arr){
  return Math.floor(Math.random() * arr.length)
}

console.log(shuffle([1,2,3,4,5,6,7,8,9,10]))
