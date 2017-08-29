// In this assignment, complete the function magic_multiply and ensure it passes all the test inputs and matches their results.
//  Modify magic_multiply until all the tests pass. Do not create a new magic_multiply for each test!
// Test 1
// In order to make this test pass, we will need to add logic to magic_multiply.
//  Whenever we call magic_multiply for 5 and 2, the returned result should always be 10. Remember, we must use these specific inputs!
// Test 2
// let test2 = magic_multiply(0, 0);
// console.log(test2);
// => "All inputs 0"
// Test 3
// let test3 = magic_multiply([1, 2, 3], 2);
// console.log(test3);
// // => [2, 4, 6]
// Test 4
// let test4 = magic_multiply(7, "three");
// console.log(test4);
// // => "Error: Can not multiply by string"
// Test 5 - Bonus
// let test5 = magic_multiply("Brendo", 4);
// console.log(test5);
// // => "BrendoBrendoBrendoBrendo"
function magic_multiply(x, y){
    if (typeof x == 'number' && typeof y == 'number'){
      return x*y
    }
    else if (x.constructor === Array && typeof y == 'number'){
      for(var i=0;i<x.length;i++){
        x[i] = x[i] * y
      }
      return x
    }
    else if (y.constructor === Array && typeof x == 'number'){
      for(var i=0;i<y.length;i++){
        y[i] = y[i] * x
      }
      return y
    }
    else if (typeof x == "number" && typeof y == 'string'){
      return "cannot multiply a string"
    }
    else if (typeof x == "string" && typeof y == "number"){
      return x.repeat(y)
    }

}
console.log(magic_multiply(5,2))
console.log(magic_multiply(0,0))
console.log(magic_multiply([1,2,3],2))
console.log(magic_multiply(0,"hello"))
console.log(magic_multiply('hello',3))
