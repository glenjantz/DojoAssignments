//pg 61
//create a function that accepts a listnode pointer and returns the last value in the list
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}

var list = new SLL();
var node = new Node(20);
var node2 = new Node(10)
var node3 = new Node(30)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;

function SLLBack(list){
  if(!list.head){     //check if the list has a head if not return
    return null
  }else{
    var current = list.head; //set a variable to traverse the list
    while(current.next){  //move to the last node in the list
      current = current.next
    }
    return current.val  //return the value
  }
}
console.log(SLLBack())
