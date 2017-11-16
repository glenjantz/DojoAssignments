//pg 63
//given two pointers to sepatate linked lists concatenate the second list to the end of the first one and return the new list
function Node(value){
  this.val = value;
  this.next = null;
}
function SLL(){
  this.head = null;
}

var list = new SLL();
var node = new Node(10);
var node2 = new Node(20)
var node3 = new Node(30)
list.head = node;
list.head.next = node2
list.head.next.next = node3
//create a second sll to concat
var list2 = new SLL();
var lnode = new Node(5)
var lnode2 = new Node(6)
var lnode3 = new Node(6)
list2.head = lnode;
list2.head.next = lnode2;
list2.head.next.next = lnode3

function SLLConcat(list1,list2){
  if(!list1.head || !list2.head){ //check 2 lists where entered
    return false  //return false if either list is missing
  }
  var runner = list1.head;   //loop to the end of the first sll
  while(runner.next){
    runner = runner.next
  }
  runner.next = list2.head // connect the two lists and return it
  return list1
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
console.log(SLLConcat(list,list2))
console.log(slldisplay(list))
