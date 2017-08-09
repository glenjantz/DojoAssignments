// Create a birthday countdown.
// var daysUntilMyBirthday = 60;
// For every day, print how many days left.
// If it's more than 30 days, print a sad message.
// If it's less than 30 days, print a message that sounds excited!
// If it's less than 5 days, SCREAM IT!
// ONCE IT'S YOUR BIRTHDAY HAVE PARTY!

var daysuntilmybirthday = 60;
for(var i=60; i>=0; i--){
  if(daysuntilmybirthday >= 30){
    console.log(":(");
  }
  if(daysuntilmybirthday < 30 && daysuntilmybirthday >= 5){
    console.log(":)");
  }
  if(daysuntilmybirthday < 5 && daysuntilmybirthday > 0){
    console.log(":D");
  }
  if(daysuntilmybirthday == 0){
    console.log("its party time");
  }
  daysuntilmybirthday--
}
