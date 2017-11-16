//pg 51
//implement reverseString(str) that, given stringm returns that string with characters reversed. given "creature", return "erutaerc". do not use built in methods.
function reverseString(str){
  var newarr = str.split("");   //split the string on every character
  var newstr = "";   //start an empty string to add to
  for(var i = newarr.length-1;i>=0;i--){  //loop through the array from end to start
    newstr += newarr[i];  //add each character backwards
  }
  return newstr   //return the string
}
console.log(reverseString("hello"));
