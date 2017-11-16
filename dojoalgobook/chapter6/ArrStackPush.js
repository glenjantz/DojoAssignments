//pg 71
//create push(val) that adds val to our stacks

function arrStackPush(arr,val){  //arrays are stacks this is the simple solution
  arr.push(val) //push the value into the array
  return arr
}

function Stack(){  //this is basically an array constructor
  this.size = 0;    //length
  this.storage = {};   //the array
}

Stack.prototype.push = function(val){
  var size = this.size;      //length of the stack
  this.storage[size] = val;   //keys are the index
  this.size++    //updated length each time a key,val is added
  return this
}
var testarr = new Stack()
console.log(testarr.push(1))


// console.log(arrStackPush([1],2))
