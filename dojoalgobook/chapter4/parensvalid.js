//pg52
// create a function that, given an input str, returns a boolean whether parentheses in str are valid.
// valid sets of parentheses always open before they close, for example. "Y(3(p)p(3)r)s" return true. given  "n(0(p)3" return false. not every parenthesis is closed.
//given "n(0)t )0(k" return false because the underlined ")" is premature. there is nothing open for it to close.
function parensvalid(str){
 var leftp = 0;    //set counters for left and right parentheses
 var rightp = 0;
 var arr = str.split("");   //split the str on every character into an array
 for(var i =0;i<arr.length;i++){   //loop through the whole array
   if(rightp > leftp){    //check every iteration if right > than left if so return false
     return false
   }
   if(arr[i] == ")"){     //update counters of "(" ")"
     rightp++
   }
   if(arr[i] == "("){
     leftp++
   }
 }
 if(leftp != rightp){  //check if they are the same count
   return false
 }else{
   return true
 }
}

console.log(parensvalid("n(0(p)3)"))
