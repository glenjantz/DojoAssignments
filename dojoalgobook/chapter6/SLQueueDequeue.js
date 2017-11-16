// pg70
//create SLQueue method dequeue() to remove and return the value at the front of queue. Remember SLQueue uses SLL not arrays

function Node(value){
  this.val = value;
  this.next = null;
}
function SLQueue(){
  this.head = null;
}

SLQueue.prototype.dequeue = function(){
  if(!this.head){ //check if the list has values
    return null
  }
  var runner = this.head;  //variable to traverse the list
  while(runner.next.next != null){ // loop to find the node before the last node
    runner = runner.next
  }
  var removed = runner.next; //set variable to the node being removed
  runner.next = null;  //remove the node
  return removed  //return the node
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



console.log(list.dequeue(1))
console.log(slldisplay(list))
