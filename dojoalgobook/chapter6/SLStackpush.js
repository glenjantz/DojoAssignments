//pg 71
//create push(val)  that adds val to our stack

function Node(value){
  this.val = value;
  this.next = null;
}
function SLStack(){
  this.head = null;
  this.tail = null;      //added a tail to avoid unneccesary loops in methods
}

SLStack.prototype.push = function(val){
  var node = new Node(val);   // make the new node
  if(!this.head){   //check if list has values
    this.head = node
    this.tail = node;
  }
  this.tail.next = node;  //set the new node after the tail
  this.tail = node;   // set the tail
  return this
}
SLStack.prototype.push2 = function(val){ //stack where the "front" is the "end"
  var node = new Node(val)
  if(!this.head){ //check for values
    this.head = node;
    return this
  }
  node.next = this.head;  //account for current head
  this.head = node;  //set new head
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

var list = new SLStack();
var node = new Node(20);
var node2 = new Node(10)
var node3 = new Node(30)
list.head = node;
list.tail = node;
// list.head.next = node2;
// list.head.next.next = node3;
// list.tail = node3;
//
console.log(list.push(10))
console.log(list)
// console.log(slldisplay(list))
