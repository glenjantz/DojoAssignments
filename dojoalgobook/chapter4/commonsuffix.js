//pg 53
//write a function that, when given a word array returns the largest suffix (word-end) common to all words in the array. for inputs
//['deforestation', 'citation', 'conviction', 'incarceration'] return "tion" if it is ["nice", "ice", "baby"] return ""

function commonsuffix(arr){
  var common = ""; // start an empty string
  var count = 1; // start a character counter to keep track of which letter to compare to since each word is not the same length we need a variable
  for(var i = arr[0].length-1;i>=0;i--){ //loop through the first word in the array starting with the last character going to the first
    for(var j = 1;j<arr.length;j++){ //loop through the array starting at the second index to the end
      if(arr[0][i] == arr[j][arr[j].length-count]){ //check if the last character of the first index is == the last character of the second loop item
          continue
      }else{  //if the character is not the same in one of the strings
        return common.split("").reverse().join("")  //return the string, it is backwards so we must split it on each character, reverse the array, and join with no spaces before returning
      }
    }
    common += arr[0][i] // if the character was in each word add it to the string
    count++ //increment the count to change the compared character
  }
  return common.split("").reverse().join("") //return the string, it is backwards so we must split it on each character, reverse the array, and join with no spaces before returning
}

 // var str = "hello"
 // console.log(str.split("").reverse().join(""))

console.log(commonsuffix(['deforestation', 'citation', 'conviction', 'incarceration']))
