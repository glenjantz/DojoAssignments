//Multiples of Three – but Not All

function multof3(){
  for(var i=-300;i<=0;i++){
    if( i != -3 && i != -6){
      if(i % 3 == 0){
        console.log(i)
      }
    }
  }
}
multof3()
