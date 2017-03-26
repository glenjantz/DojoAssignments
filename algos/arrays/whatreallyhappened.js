//Kyle (smarter than Kenny) notes that the chance of one disaster is
// totally unrelated to the chance of another. Change whatHappensToday()
//function to create whatReallyHappensToday(). In this new function test for
// each disaster independently, instead of assuming exactly one disaster will
// happen. In other words, with this new function, all five might occur today
//  – or none. Maybe Kenny will survive!

function random(){
  return Math.floor(Math.random()*100);
}
function whatreallyhappened(){
  if (random() < 10) {
  console.log("Volcano");
  }
  if (random() < 15) {
    console.log("Tsunami");
  }
  if (random() < 20) {
    console.log("earthquake");
  }
  if (random() < 25) {
    console.log("blizzard");
  }
  if (random() < 30) {
    console.log("meteor strike");
  }
}
whatreallyhappened();
