//pg50
//create a function that, given a string, returns the strings acronym first letters only capitalized. Given " there's no free lunch - gotta pay yer way" return TNFL-GPYW
//given "live from new york, its saturday night!" return "LFNYISN"

function acronym(string){
  var newstr = "" //set a new string
  var newarr = string.split(" ") //split the string on spaces so each word will be an array index
  for(var i = 0;i<newarr.length;i++){ //loop through the array to the end
    newstr += newarr[i][0].toUpperCase() //add the first letter of each index to newstr capitalized
    console.log(newstr)
  }
  return newstr //return the new string
}
console.log(acronym("thank god its friday"))
