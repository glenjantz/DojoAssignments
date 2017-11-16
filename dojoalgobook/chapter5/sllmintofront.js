//pg 61
//create a function that locates the minimum value in a linked list, and moves tha tnode to the front of the list.
// return the new list with all nodes still present and all (except the new head node) in original order
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}
var list = new SLL();
var node = new Node(5);
var node2 = new Node(1)
var node3 = new Node(0)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;

 function SLLMinToFront(list){
   if(!list.head){ //check if the list has values
     return null
   }else{
     var min = list.head; //variable for min node
     var current = list.head; //variable to traverse the list
     while(current){ //loop until null to find min
       if(current.val < min.val){ //check to update min
         min = current
        //  console.log(min)
       }
       current = current.next //update current
     }
     if(min == list.head){// check if min is the head
       return list
     }else{
       current = list.head; //reset current to loop again to find the node before min
       while(current){ //loop until the null
         if(current.next.val == min.val){  //check to find the node before min
           current.next = current.next.next //sets its next to the node after min
           min.next = list.head //set mins next to the head
           list.head = min //set head to min
           return list //return
         }
         current = current.next //update current
       }
     }
   }
 }
 function slldisplay(list){
   if(!list.head){
     return "no values"
   }else{
       var str = "";
       var current = list.head;
       while(current){
         str+= current.val + " "
         current = current.next
       }
       return str
   }
 }
 console.log(SLLMinToFront(list))
 console.log(slldisplay(list))
