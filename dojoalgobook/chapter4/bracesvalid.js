//pg52
//Given a sequence of parentheses, braces and brackets, determine whether it is valid. Example: "W(a{t}s[o(n{ c}o)m]e )h[e{r}e]!" =>true. "D(i{a}l[ t]o)n{e" =>false

function bracesvalid(str){
  //set a counter for brace/bracket/parenthesis
  var leftp = 0;
  var leftb = 0;
  var leftbr = 0;
  var rightp = 0;
  var rightb = 0;
  var rightbr = 0;
  var arr = str.split(""); //split the string on every character into an array
  for(var i = 0;i<arr.length;i++){ //loop through the array
    if(rightp > leftp || rightb > leftb || rightbr > leftbr){ // check each iteration if the right brace/bracket/parentheses is ever greater than left return false because its invlaid
      return false
    }
    if(arr[i] == ")"){ //otherwise check for the characters each iteration update the counters
      rightp++
    }
    if(arr[i] == "("){
      leftp++
    }
    if(arr[i] == "}"){
      rightb++
    }
    if(arr[i] == "{"){
      leftb++
    }
    if(arr[i] == "["){
      rightbr++
    }
    if(arr[i] == "]"){
      leftbr++
    }
  }
  if(leftp != rightp){  //after the loop check if each types left and right are equal if not return false
    return false
  }
  else if(leftb != rightb){
    return false
  }
  else if(leftbr != rightbr){
    return false
  }
  else{
    return true //otherwise return true
  }
}
console.log(bracesvalid("(h){{}}"))
