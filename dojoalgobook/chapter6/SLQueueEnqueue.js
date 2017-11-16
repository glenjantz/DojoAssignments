// pg70
//create SLQueue method enqueue(val) to add the given value to the end of of queue. Remember use a SLL not an array.

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

var list = new SLQueue();
var node = new Node(20);
var node2 = new Node(10)
var node3 = new Node(30)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;



console.log(list.enqueue(1))
console.log(slldisplay(list))
