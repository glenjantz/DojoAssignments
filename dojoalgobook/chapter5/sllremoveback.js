//pg 61
//create a function that removes the last listnode in the list and returns the new list
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

 function SLLRemoveBack(list){
   if(!list.head){ //check if the list has values
     return null
   }else{
     var current = list.head; //variable to loop with
     while(current.next.next){ //loop until the node before the last node
       current = current.next
     }
     current.next = null //remove the last node
     return list //return the list
   }
 }
console.log(SLLRemoveBack(list))
