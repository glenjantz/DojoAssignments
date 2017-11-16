//pg 62
//create removeVal(list,val) given a pointer to the head remove the node with the given val return the new list. what will you do if no val has been found.
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

function removeVal(list,val){
  if(!list.head){return false} //check if the list has values
  var runner = list.head.next; //variable to traverse the list
  var prev = list.head;  //variable to track the previous node
  if(list.head.val == val){ //check if the head is the value to be removed
    list.head = list.head.next; //remove the head and return the list
    return list
  }
  while(runner){ //loop until null to find the value to remove
    if(runner.val == val){  //check for the value to be removed
      prev.next = runner.next; //update the prev to remove the node
      runner.next = null; //update the runner to remove the node
      return list //return the list
    }
    prev = runner; //update prev
    runner = runner.next //update runner
  }
  return false //return false if no values removed
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
console.log(removeVal(list,30))
console.log(slldisplay(list))
