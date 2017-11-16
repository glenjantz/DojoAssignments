//pg 51
// build a standalone function to remove strings of even lengths from a given array. for array containing
//["Nope!", "its", "Kris", "starting", "with", "K", "(instead", "of", "chris", "with", "c)", "."], change that same array to ["Nope!", "Its", "Chris", "."]
function removeevenstrings(arr){
 for(var i = 0;i<arr.length;i++){  //loop through the whole array
   if(arr[i].length % 2 == 0){   // check for even length strings
     arr.splice(i,1)     //remove the even length strings
     i--     //move i back 1 iteration so it doesnt skip an index
  }
 }
 return arr // return the arr
}
var myarr = ["Nope!", "Its", "Kris", "starting", "with", "K!", "(instead", "of", "Chris", "with", "c)", "."];
console.log(removeevenstrings(myarr))

// ["Kris", "starting", "with", "K", "(instead", "of", "with", "c)", "."]
