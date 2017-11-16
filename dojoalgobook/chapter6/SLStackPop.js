//pg 71
//create pop() to remove and return the top val

function Node(value){
  this.val = value;
  this.next = null;
}
function SLStack(){
  this.head = null;
  this.tail = null;      //added a tail to avoid unneccesary loops in methods
}
SLStack.prototype.pop = function (){
  if(!this.head){ //check for values
    return null;
  }
  var runner = this.head; //variable to loop with
  while(runner){   //loop until null to find the node before the tail
    if(runner.next.val == this.tail.val){  //check for the tail node
      var deleted = runner.next  //save for return
      runner.next = null;     //delete the tail
      this.tail = runner; //set new tail
      return deleted   //return
    }
    runner = runner.next
  }
}
SLLStack.prototype.pop2 = function(){  //stack where the "front" is the "end"
  if(!this.head){ //check for values
    return null
  }
  var deleted = this.head;  //save for return
  this.head = this.head.next;  //change the head
  deleted.next = null;
  return deleted
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

var list = new SLStack();
var node = new Node(20);
var node2 = new Node(10)
var node3 = new Node(30)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;
list.tail = node3;

console.log(list.pop())
console.log(slldisplay(list))
