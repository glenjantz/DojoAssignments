//pg 63
//given a pointer to the head node of a sll remove any nodes containing negative values return the new list.
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}
var list = new SLL();
var node = new Node(-1);
var node2 = new Node(-1)
var node3 = new Node(-1)
var node4 = new Node(-1)
list.head = node;
list.head.next = node2;
list.head.next.next = node3;
list.head.next.next.next = node4;

function SLLRemoveNegs(list){
  if(!list.head){return false} //check if the list has values
  while(list.head.val < 0){  //loop to remove head if neg until it is positive
    list.head = list.head.next;
  if(list.head == null){ //check if the list still has values
    return list
  }
  }
  var runner = list.head.next; //set a variable to traverse the list (head is already known to be positive)
  var prev = list.head;  //variable to keep track of the previous node
  while(runner){// loop until null to find negatives
    if(runner.val < 0){ //if negative set the prev node .next to the runners .next then runner.next to null to remove the node
      prev.next = runner.next;
      runner.next = null;
      runner = prev  //reset runners location to the previous node
    }
    prev = runner; //update prev
    runner = runner.next; //update runner
  }
  return list  //return list after loop
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
console.log(SLLRemoveNegs(list))
console.log(slldisplay(list))
