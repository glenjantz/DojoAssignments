//pg 52
//return the longest palindromic substring. given "what up, daddy-o>" return "dad".
//given "uh... not much", return "u" include spaces as well.(i.e. be strict, as in previous challenge)
//given "Yikes! my favorite racecar erupted!" return "e racecar e". Strings longer or shorter than complete words are ok
function longestpalindrome(str){
  var maxlength = 0; //set a variable to record the longest palindrome
  var longestp = ""; //set a string to keep track of the longest palindrome
  for(var i = 0;i<str.length;i++){ //loop from the start of the string to the end
    var subs = str.substr(i, str.length); //each iteration start a new str starting from i to the end of the string
    for(var j=subs.length;j>=0;j--){ //loop through the new string starting from the end to the beginning
      var subs_subs = subs.substr(0, j); //make another new string starting from the beginning of subs to loop item j
      // if(subs_subs.length <= 1){
      //   continue;
      // }
      if(is_Palindrome(subs_subs)){  //run it through the helper function to determine whether its a palindrome
        if(subs_subs.length > maxlength){ //if it is and its length is > the current maxlength replace it and set the longestp string to the longest palindrome
          maxlength = subs_subs.length;
          longestp = subs_subs
        }
      }
    }
  }
  return longestp //return the longest palindrome
}


function is_Palindrome(str) {
  var str2 = str.split("").reverse().join("");
  return str === str2;
}
var str = "Yikes! my favorite racecar erupted!"
console.log(str.substr(str[10],str.length))
console.log(longestpalindrome("Yikes! my favorite racecar erupted!"))
