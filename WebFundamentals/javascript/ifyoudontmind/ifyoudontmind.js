var HOUR = 8;
var MINUTE = 32;
var PERIOD = "AM";
// var past = HOUR+1;

if(MINUTE > 30)
console.log("It's almost",HOUR + 1,"in the morning");
if(MINUTE > 14 && MINUTE < 16)
console.log("It's quarter after",HOUR);
if(MINUTE === 5)
console.log("It's 5 after", HOUR);
else if(MINUTE < 30)
console.log("It's just past",HOUR,PERIOD);
if(MINUTE === 30)
console.log("It's half past",HOUR);
