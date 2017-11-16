//72
//create pop() to remove and return the top val
function arrStackPop(arr){   //simple solution since arrays are stacks
  return arr.pop();
}

function Stack(){  //this is basically an array constructor
  this.size = 0;    //length
  this.storage = {};   //the array
}

Stack.prototype.pop = function(){
  var size = this.size -1;   //the size is the last key
  var deleted = this.storage[size];  //store for return
  delete this.storage[size];  //remove from the object
  this.size--;  //update size
  return deleted
}
Stack.prototype.push = function(val){
  var size = this.size;      //
  this.storage[size] = val;   //keys are the index
  this.size++    //updated length each time a key,val is added
  return this
}

var testarr = new Stack()
testarr.push(1)
testarr.push(2)
testarr.push(3)
console.log(testarr.size)
console.log(testarr)
console.log(testarr.pop())
console.log(testarr)
