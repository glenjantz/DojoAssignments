//pg50
//create a function that given a string returns all of that strings contents,
// but without blanks. if given the string " pl aTha Tf u nkym usi c" return "playthatfunkymusic"

function removeblanks(string){
  var newarr = string.split(" ")    //split the string on spaces into an array
  var newstr = newarr.join("")   //join the array to remove spaces
  return newstr //return the str
}

console.log(removeblanks('pl ay Tha t Fun Kym usic'))
