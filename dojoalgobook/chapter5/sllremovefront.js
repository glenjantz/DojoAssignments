//pg 59
//given a pointer to the first node in a list, remove the head node and return the new list head node. If list is empty return null.
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

function SLLRemoveFront(sll){
  if(!sll.head){ //check if the list has values
    return null
  }else{
    sll.head = sll.head.next; //remove the head
    return sll
  }
}
console.log(SLLRemoveFront(list))
console.log(SLLRemoveFront(list))
console.log(SLLRemoveFront(list))
// console.log(list)
