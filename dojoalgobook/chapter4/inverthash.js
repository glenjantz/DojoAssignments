//pg 55
// build inverthash(assocarray) to convert hash keys to values and values to keys.
//ex: given {name: "zaphod","charm":"high","morals": "dicey"} return {"zaphod": "name", "high": "charm", "dicey": "morals"}
function inverthash(obj){
  var obj2 = {}; //set an empty object
  for(i in obj){ //loop through the object
    var value = obj[i] // set a variable to be the value
    var key = i; // set a variable to be the key
    obj2[value] = key // on each iteration add a new key,value pair to obj2, make the key the value of obj1, and the value the key of obj1
  }
  return obj2
}
console.log(inverthash({"name": "zaphod","charm":"high","morals": "dicey"}))
