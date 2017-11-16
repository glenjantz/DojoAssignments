//pg 59
//return the value (not the node) at the head of the list. if list is empty return null
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
list.head = node;
list.head.next = node2
function SLLFront(sll){
  if(!sll.head){ //check for values in the list
    return null
  }else{
    return sll.head.val  //return the head
  }
}
console.log(SLLFront(list))
