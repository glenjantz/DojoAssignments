//Print all odd integers from 1 to 255.
function printodds(){
  for(var i=1;i<=255;i++){
    if(i % 2 != 0){
      console.log(i);
    }
  }
}
printodds()

// OR
 function printodds2(){
   for(var i=1;i<=255;i = i + 2){
     console.log(i)
   }
 }
 printodds2()
