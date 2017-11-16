//pg 61
//create a function that locates the maximum value in a linked list and moves that node to the back of the list.
//return the new list with all nodes still present and all their original order except for the node you moved to the end of the sll
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}
var list = new SLL();
var node = new Node(9);
var node2 = new Node(8)
var node3 = new Node(7)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;

 function SLLMaxToBack(list){
   if(!list.head){  //check if the list has values
     return null
   }else{
     var max = list.head; //variable for max node
     var current = list.head; //variable for traversing the list
     var last;  //variable to keep track of the last node in the list
     while(current){  //loop until null to find max
       if(current.val > max.val){  //update max
         max = current
       }
       if(current.next == null){ //update last node
         last = current
       }
       current = current.next //update current
     }
     if(max == last){ //check if max is already at the back
       return list
     }
     if(max == list.head){  //check if max is the head node to assign a new head
       list.head = list.head.next; //update the head
       last.next = max; //move head to back
       max.next = null; //update heads next
       return list //return
     }
     var runner = list.head //variable to traverse the list
        while(runner.next){  //loop to find the node before the max node (dont need check the last node already done above)
         if(runner.next.val == max.val){
           runner.next = runner.next.next; //update the nodes .next before max to the node after max
           last.next = max; //set max to the end
           max.next = null; //updates max next
           return list //return
         }
         runner = runner.next //update runner
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
console.log(SLLMaxToBack(list))
console.log(slldisplay(list))
