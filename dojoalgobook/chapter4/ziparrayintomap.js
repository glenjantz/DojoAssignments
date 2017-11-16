//pg 55
//given two arrays, create an associative array(map) containing keys of the first, and values of the seocnd
// for arr1 = ["abc", 3, "yo"] and arr 2 = [42,"wassup",true] return {"abc": 42, 3:"wassup", "yo": true}
function ziparrays(arr1,arr2){
  var obj = {};   //start an empty object
  if(arr1.length != arr2.length){    //array lengths need to be the same
    return "invalid array lengths"
  }
  else{
    for(var i = 0;i<arr1.length;i++){   // loop through one array
      // var key = arr1[i];
      // var value = arr2[i];
      // obj[key] = value;
      obj[arr1[i]] = arr2[i]   //make arr1[i] a key of obj and arr2[i] the value of the key
    }
  }
  return obj //return the obj
}
console.log(ziparrays(["abc", 3, "yo"],[42,"wassup",true]))
