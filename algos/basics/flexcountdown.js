// Based from earlier “Countdown By Fours”, given (lowNum, highNum, mult), print the numbers in multiples of mult from highNum down to lowNum, using a FOR loop.
// Example: For (2,9,3), print 9 6 3 (on successive lines).

function flexcountdown(lownum,highnum,mult){
  for(var i = highnum; i >= lownum;i--){
    if(highnum % mult == 0){
      console.log(highnum);
    }
    highnum -= 1;
  }
}

flexcountdown(0,100,4);
