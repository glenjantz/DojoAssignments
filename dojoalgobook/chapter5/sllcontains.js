//pg 59
//given a pointer to a listnode and a val return whether a val is found in any node within the list
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}

var list = new SLL();
var node = new Node(10);
var node2 = new Node(20)
var node3 = new Node(30)
list.head = node;
list.head.next = node2
list.head.next.next = node3

function SLLContains(sll,val){
  if(!sll.head){  //check if the list has values
    return false
  }
  var current = sll.head; //variable for traversing
  while(current){   //loop through the list until null is reached
    if(current.val == val){ //check for the value on each iteration
      return true
    }
    current = current.next //update current
  }
  return false
}
console.log(SLLContains(list,10))
