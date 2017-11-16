//pg 24
// your time with us will definitely make you smarter! lets say a new dojo student bogdan entered with a modest iq of 101
// how smart would bogdan be at the end of the bootcamp if his iq rose by .01 on the first day then went up by an additional .02 on the second day
//and up by .03 more on the third day etc.. all the way until increased by .98 on his 98th day.
function soaringiq(){
  var iq = 101.00;
  var inc = 0.01
  for(var i =0;i<98;i++){ //loop from 0 to 97
    iq = iq + inc //increment by the inc
    inc = inc + 0.01  // add to the inc
  }
  return iq //return the total
}

console.log(soaringiq())
