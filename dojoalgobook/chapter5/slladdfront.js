//pg59
//given a pointer to the first listnode and a value, create a new node assign it to the list head and return a ponted to the new head node

function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}

function SLLAddFront(sll,value){
  var newnode = new Node(value);  //make a node
  newnode.next = sll.head;  //set its next to the current head
  sll.head = newnode   //set the list head to the node
  return sll.head   //return the node
}
var list = new SLL();
var node = new Node(10);
list.head = node;
console.log(SLLAddFront(list,20))
console.log(list)
