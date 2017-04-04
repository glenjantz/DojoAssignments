//To understand and write JavaScript code effectively, you need to understand how the interpreter rearranges your code.
 // For each of the following problems rewrite the code to mimic how the interpreter would rearrange it before running.
 // After rearranging the code, predict the output.

 // Problem 1:
//  console.log(first_variable);
// var first_variable = "Yipee I was first!";
// function firstFunc() {
//   first_variable = "Not anymore!!!";
//   console.log(first_variable);
// }
// console.log(first_variable);

// solution
//firstFunc never invoked...changes the setup

// declarations get hoisted
// var first_variable;
// function firstFunc(){
//   first_variable = "Not anymore!!!";
//   console.log(first_variable);
// }
//
// //assignments and invocation maintain order
// console.log(first_variable);
// first_variable = "Yipee I was first!";
// console.log(first_variable);

//problem 2
// var food = "Chicken";
// function eat() {
//   food = "half-chicken";
//   console.log(food);
//   var food = "gone";       // CAREFUL!
//   console.log(food);
// }
// eat();
// console.log(food);


//solution
//declarations get hoisted
// var food;
// function eat(){
//   var food;
//   food = "half-chicken";
//   console.log(food);
//   food = "gone";
//   console.log(food);
// }
//
// //assignments and invocations maintain order
//  food = "Chicken";
// eat();
// console.log(food);


// problem 3
var new_word = "NEW!";
function lastFunc() {
  new_word = "old";
}
console.log(new_word);

//solution
//declarations get hoisted
var new_word;
function lastfunc(){
  new_word = "old";
}
// //assignments and invocations maintain order
new_word = "NEW!";
lastfunc();
console.log(new_word)
