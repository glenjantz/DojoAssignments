//pg 52
//create a function that returns a boolean whether the string is a strict palindrome. For "a x a" or "racecar" return true,
// do not ignore spaces, punctuation and capitlization. if given "Dud" or "oho!" return false
function isPalindrome(str){
  var arr = str.split("");  //split the string on every character into an array
  var tempstr = ""  //start an empty str to use for a backwards version of the str
  for(var i = arr.length-1;i>=0;i--){ //loop from the end of the array to the front
    tempstr+= arr[i];   //add each character to the tempstr backwards
  }
  if(tempstr === str){ //check if they are the same
    return true
  }
  else{
    return false
  }
}
// console.log(isPalindrome("dad"))

//OR

function isPalindrome2(str){
  var arr = str.split("") //split the string on every character
  var str2 = arr.reverse().join("")  //reverse the array and join so no spaces
  console.log(str2)
  if(str != str2){ //check if they are the same
    return false
  }else{
    return true
  }
}

// console.log(isPalindrome2("dad"))

// OR

function is_Palindrome(str) {
  var str2 = str.split("").reverse().join(""); // split the string on every character,turn it backwards, join so no spaces
  return str === str2;  //check if they are the same
}
