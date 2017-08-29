// Math 1
// Write a function called zero_negativity(). This function should take an array.
//  Return true if the input array contains no negative numbers, return false if it does.
function zero_negativity(array){
  for(var i = 0;i<array.length;i++){
    if(array[i] < 0){
      return false
    }
  }
  return true
}
console.log(zero_negativity([0,2,3]))
console.log(zero_negativity([0,2,3,-1]))
// Math 2
// Write a function called is_even(). This function should take an number. Return true if the input number is even, return false if the number is odd.
function is_even(num){
  if(num % 2 == 0){
    return true
  }
  else{
    return false
  }
}
console.log(is_even(2))
console.log(is_even(1))
// Math 3
// Write a function called how_many_even(). This function should take an array.
//  Return the total number of elements in the array that are even. You may call is_even() to solve this.
function how_many_even(array){
  var count = 0;
  for(var i = 0;i<array.length;i++){
    if (is_even(array[i]) == true){
      count++
    }
  }
  return count
}
console.log(how_many_even([1,2,3,4,5,6]))
// Math 4
// Write a function called create_dummy_array(). This function should take a number n.
//  Return an array of random numbers between 0 and 9 with the length of n.
function create_dummy_array(n){
  var arr = [];
  for(var i = 0;i<n;i++){
    arr.push(Math.floor(Math.random()*10))
  }
  return arr
}
console.log(create_dummy_array(10))
// Math 5
// Write a function called random_choice(). This function should take an array.
//  Return a random element of the array, based on its length. This function should never return undefined.
function random_choice(arr){
  return arr[Math.floor(Math.random()*arr.length)]
}
console.log(random_choice([1,5,7,2,10,6]))
