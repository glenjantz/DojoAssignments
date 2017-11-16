//pg 60
//create a function that accepts a pointer to the first list node and returns number of ndodes in that sll
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

function slllength(sll){
  if(!sll.head){  //check for values in the list
    return 0
  }else{
    var current = sll.head;  //variable for traversing the list
    var count = 0; //counter for the length
    while(current){
      count += 1; //update count each iteration
      current = current.next  //update current
    }
    return count //return the count
  }
}
console.log(slllength(list))
