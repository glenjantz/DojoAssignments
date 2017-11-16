//pg 62
//create appendval(node,val,after) that inserts a new node containing given val immediately
// after the node containing after (or at end if after not found) return the new list
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}
var list = new SLL();
var node = new Node(2);
var node2 = new Node(3)
var node3 = new Node(6)
var node4 = new Node(1)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;

function SLLappendval(list,val,after){
  var node = new Node(val)    //make a new node
  if(!list.head){       //if no head make the node the head and return it
    list.head = node;
    return list
  }
  var runner = list.head;   //start a variable to traverse the list
  var last = list.head;   //another variable in case there was no after to add to the end of the list
  while(runner){  //loop to check every value of every node
    if(runner.val == after.val){   //check if the current node is the after node
      node.next = runner.next;    //set the nodes next to afters next
      runner.next = node;   //set afters node to the new node
      return list; //return the list
    }
    if(runner != null){  //sets the last node before the loop moves to null
      last = runner
    }
    runner = runner.next   //traverse the list
  }
  last.next = node;   //if this point is reached there was no after -- set last.next to the node and return it
  return list
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
console.log(SLLappendval(list,10,node4))
console.log(slldisplay(list))
