//Write a function that determines whether a given year is a leap year. If a year is divisible by four, it is a leap year, unless it is divisible by 100. However, if it is divisible by 400, then it is.
function leapyear(year){
  if(year % 4 == 0){
    console.log("it's leap year")
  }
  else {
    console.log("its not leap year")
  };
};
leapyear(2001);
