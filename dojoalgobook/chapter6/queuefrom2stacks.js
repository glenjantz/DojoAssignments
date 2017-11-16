//pg72
//using only 2 stack objects for the underlying data storage recreate a queue class

function Node(value){
  this.val = value;
  this.next = null;
}
function SLQueue(){
  this.head = null;
}
SLQueue.prototype.enqueue = function(val){  //use prototype to make this a method every slqueue will have
  var node = new Node(val);  //make a new node and set it to the head and return the list
  node.next = this.head;
  this.head = node;
  return this
}
function slldisplay(list){
  if(!list.head){ //check if the list has values
    return "no values"
  }else{
      var str = ""; //start an empty string to add to
      var current = list.head; //variable for traversing list
      while(current){  //move through until null is reached
        str+= current.val + " "  //add the value and a space  to the str
        current = current.next  //update the loop
      }
      return str //return the str
  }
}

function fromtwoarrays(arr1,arr2){
  var q = new SLQueue;  //begin a new q
  var length;     //find the smaller length array
  if(arr1.length < arr2.length){
    length = arr1.length
  }else{
    length = arr2.length
  }
  length = length * 2  //double it to take 1 value from each array until one is empty
  for(var i = length;i>0;i--){
    if(i % 2 == 0){  //cycle the arrays to ttake from
      q.enqueue(arr1.pop())
    }
    if(i % 2 != 0){
      q.enqueue(arr2.pop())
    }
  }
  if(arr1.length > 0){     //finish off the remaining values in the other array
    while(arr1.length > 0){
      q.enqueue(arr1.pop())
    }
  }
  if(arr2.length > 0){
    while(arr2.length > 0){
      q.enqueue(arr2.pop())
    }
  }
  return q   //return
}


var arr1 = [1,2,3,4,4];
var arr2 = [5,6,7];
var q = fromtwoarrays(arr1,arr2)
console.log(slldisplay(q))
