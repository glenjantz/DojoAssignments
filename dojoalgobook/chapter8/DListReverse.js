//pg 94
//create function to reverse nodes in a dlist

function Node(val){
  this.val = val;
  this.prev = null;
  this.next = null;
}
function DLL(){
  this.head = null;
  this.tail = null;
}

function DListReverse(list){
  if(!list.head || !list.head.next){
    return false
  }
  var runner1 = list.head;
  var runner2 = list.tail;
  var curhead = list.head;
  var curtail = list.tail;
  while(runner1 != runner2){
    var temp1 = runner1;
    var temp2 = runner2;
    runner2.prev.next = runner1;
    runner1.next.prev = runner2;
    var temp3 = runner2.next;
    runner2.next = runner1.next;
    runner1.next = temp3;
    temp3 = runner1.prev;
    runner1.prev = runner2.prev;
    runner2.prev = temp3;
    runner1 = temp1.next;
    runner2 = temp2.prev;
  }
  list.head = curtail;
  list.tail = curhead;
  return list
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
var node4 = new Node(5)
list.head = node;
node.next = node2
node.next.next = node3
node.next.next.next = node4
list.tail = node4
node2.prev = list.head;
node3.prev = node2
node4.prev = node3

console.log(DListReverse(list))
console.log(slldisplay(list))
