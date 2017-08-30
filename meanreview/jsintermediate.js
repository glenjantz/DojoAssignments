// Part I
// Create a function called starString() that takes a number and returns a string of that many *.
function starString(num){
  var string = "*"
  return string.repeat(num)
}
console.log(starString(5))
// Part II
// Create a function called drawStars() that takes an array of numbers and prints out *.
// let x = [4, 6, 1, 3, 5, 7, 25]
// draw_stars(x) should print the following in when invoked:
//
// ****
// ******
// *
// ***
// *****
// *******
// *************************
function drawStars(arr){
  var string = "*"
  for(var i = 0;i<arr.length;i++){
    console.log(string.repeat(arr[i]))
  }
}
drawStars([1,2,3,4,5])
// Part III
// Modify the function above. Allow an array containing integers and strings to be passed to the drawStars() function.
//  When a string is passed, instead of displaying *, display the first letter of the string according to the example below.
//   You may use the .toLowerCase() string method for this part.
// let x = [4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith"]
// drawStars(x) should print the following in the terminal:
// ****
// ttt
// *
// mmmmmmm
// *****
// *******
// jjjjjjjjjjj
function drawStars2(arr){
  var string = "*"
  var string2;
  for(var i =0;i<arr.length;i++){
    if(typeof arr[i] == "number"){
      console.log(string.repeat(arr[i]))
    }
    else{
      string2 = arr[i][0].toLowerCase()
      console.log(string2.repeat(arr[i].length))
    }
  }
}
drawStars2([1,2,"Three","Four",5,"Six"])
