$(document).ready(function(){
  // function checkTime(i) {
  //   if (i < 10) {
  //     i = "0" + i;
  //   }
  //   return i;
  // }

  function startTime() {
    // var today = new Date();
    var today = new Date().toLocaleTimeString()
    // var h = today.getHours();
    // var m = today.getMinutes();
    // var s = today.getSeconds();
    // // add a zero in front of numbers<10
    // m = checkTime(m);
    // s = checkTime(s);
    // document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
    document.getElementById('time').innerHTML = today
    t = setTimeout(function() {
      startTime()
    }, 500);
  }
  startTime();
})
