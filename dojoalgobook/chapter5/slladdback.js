//pg 61
//create a function that creates a listnode with given value and inserts it at the end of a linked list
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

function SLLAddBack(list,val){
  var node = new Node(val) //make a new node
  if(!list.head){            //check if the list has a head
    list.head = node;        //if it doesnt make the node its head
    return list             //return the list
  }else{       //if no head
    var current = list.head;     //make a variable to traverse the list
    while(current.next){     //while it has a next
      current = current.next    //move to next
    }
    current.next = node;       //set the node to next of the last node
    return list   //return the list
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

console.log(SLLAddBack(list,40))
console.log(slldisplay(list))
