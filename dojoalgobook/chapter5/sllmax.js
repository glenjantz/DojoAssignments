//pg 60
//create a function max(node) to return a lists largest val
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

 function SLLMax(list){
   if(!list.head){  //check if the list has values
     return null
   }else{
     var current = list.head;  //variable to traverse the list
     var max = current.val  //variable to keep track of the max value
     while(current){  //loop until null
       if(current.val > max){ //check to update max
         max = current.val
       }
       current = current.next  //update current
     }
     return max //return the max value
   }
 }
 console.log(SLLMax(list))
