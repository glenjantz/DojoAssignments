//Create an array with all the odd integers between 1 and 255 (inclusive).

function arraywithodds(){
  var arr = [];
  for(var i = 0;i<=255;i++){
    if(i % 2 != 0){
      arr.push(i)
    }
  }
  return arr
}
console.log(arraywithodds())
