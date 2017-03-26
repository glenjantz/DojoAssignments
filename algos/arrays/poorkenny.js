//Kenny tries to stay safe, but somehow everyday something happens.
// If there is a 10% chance of volcano, 15% chance of tsunami,
//  20% chance of earthquake, 25% chance of blizzard, and 30% chance of meteor
//  strike, write function whatHappensToday() to print the outcome
function whatHappensToday(){
  var thing = Math.floor(Math.random()*100);
  if (thing >= 0 && thing < 10) {
    console.log("Volcano!");
  } else if (thing >= 10 && thing < 25) {
    console.log("Tsunami!");
  } else if (thing >= 25 && thing < 45) {
    console.log("Earthquake!");
  } else if (thing >= 45 && thing < 70) {
    console.log("Blizzard!");
  } else {
    console.log("Meteor Shower!");
  }

}
whatHappensToday()
