//Log positive numbers starting at 2016, counting down by fours (exclude 0), without a FOR loop.

function countby4(){
  var count = 2016
  while(count >= -100){
    if(count > 0){
      console.log(count);
      count -= 4
    }
  }
}
countby4();
