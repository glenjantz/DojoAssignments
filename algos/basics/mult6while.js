//Print multiples of 6 up to 60,000, using a WHILE.
function mult6(){
  var start = 0;
  while(start<=60000){
    if(start % 6 == 0){
      console.log(start);
    }
    start += 1
  }
}
mult6();
