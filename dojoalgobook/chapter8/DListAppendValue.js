//pg 94
//given dlist, new val, and existing val, insert new val into dlsist after existing val.

function Node(val){
  this.val = val;
  this.prev = null;
  this.next = null;
}
function DLL(){
  this.head = null;
  this.tail = null;
}
function DLLAppendVal(list,newval,existing){
  var node = new Node(newval)  // set the new node
  if(!list.head){  //check for head if not make node the head and tail and return
    list.head = node;
    list.tail = node;
    return list
  }
  var runner = list.head;
  while(runner){        //loop through list to find existing
    if(runner.val == existing){  //check for existing
      node.next = runner.next;    //set nodes next to runners current next
      runner.next = node;         //update runners new next
      node.prev = runner          //set nodes previous
      if(runner.next != null){
        runner.next.prev = node;    //update the node after prev
      }
      if(list.tail == runner){  //check for tail
        list.tail = node
      }
      return list
    }
    runner = runner.next
  }
  return false
}
function slldisplay(list){
  if(!list.head){ //check if the list has values
    return "no values"
  }else{
      var str = ""; //start an empty string to add to
      var current = list.head; //variable for traversing list
      while(current){  //move through until null is reached
        str+= current.val + " "  //add the value and a space  to the str
        current = current.next  //update the loop
      }
      return str //return the str
  }
}
var list = new DLL
var node = new Node(1)
var node2 = new Node(2)
var node3 = new Node(4)
list.head = node;
node.next = node2
node.next.next = node3
node.tail = node3
node2.prev = list.head;
node3.prev = node2

console.log(DLLAppendVal(list,3,1))
console.log(slldisplay(list))
