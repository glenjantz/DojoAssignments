//Given two numbers, return array of length num1 with each value num2. Print "Jinx!" if they are same.
function thislengththatval(num1,num2){
  var arr = [];
  for(var i = 0;i<num1;i++){
    arr.push(num2)
    if(arr[i] == arr.length){
      console.log("Jinx!");
    }
  }
  return arr
}
console.log(thislengththatval(6,4));
