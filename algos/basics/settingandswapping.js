//Set variable myNumber to 42. Set variable myName to your name. Now swap myNumber into myName & vice versa.
function setswap() {
  var myNumber = 42;
  var myName = "yourname";
  var temp = myNumber;
  myNumber = myName
  myName = temp

  console.log(myNumber, myName);
}
setswap()
