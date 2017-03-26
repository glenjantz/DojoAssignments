//If 2 given numbers represent your birth month and day in either order, log "How did you know?", else log "Just another day....",

function birthday(month,day){
  var birthmonth = 10;
  var birthday = 11;
  if(month === birthmonth && day === birthday){
    console.log("its your birthday");
  }
  else{
    console.log("its not your birthday");
  };
};
birthday(10,11);
birthday(10,10);
