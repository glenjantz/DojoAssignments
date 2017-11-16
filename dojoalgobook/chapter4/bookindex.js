//pg53
//given a sorted array of pages where a term appears, produce an index string. consecutive oages should form ranges separated by a hyphen. for [1,13,14,15,37,38,70]
// return stirng "1, 13-15, 37-38,70". take care to get all the commas and spaces correct.
function bookindex(arr){
  var str = ""; //start a string as empty
  for(var i=0;i<arr.length;i++){ //loop through the whole array
    if(arr[i]+1 == arr[i+1]){ //check if arr[i+1] is 1+ arr[i]
      var count = 1; //if it is set a counter to 1
      for(var j=i+1;j<arr.length;j++){ //start a second loop starting from the index of the first loop + 1 to the end of the array
        if(arr[j]+1 == arr[j+1]){ //if the following iterations are also consecutive add to the count
          count++
        }else{
          if(j==arr.length-1){ //if not check if the loop is on the last index
            str+= String(arr[i])+"-"+String(arr[j]) //if so add to the string without a comma because its the last value
            i+= count; //and increment the first loop by count so we dont check look at the same values again
            break; //break the second loop because we are done
          }else{ //if we arent on the last index
            str+= String(arr[i])+"-"+String(arr[j])+", " // add to the string with a comma(expecting more values)
            i+= count; // increment by count so we dont look at the same values again
            break; //break to iterate the first loop because no more numbers are consecutive
          }
        }
      }
    }else{ //if no numbers are consecutive just add them to the string
      if(i==arr.length-1){
        str+= String(arr[i]) ///if it is the last value no comma
      }else{
        str+= String(arr[i])+", " //comma every other time
      }
    }
  }
  return str //return the string
}
console.log(bookindex([1,13,14,15,37,38,70,71]))
