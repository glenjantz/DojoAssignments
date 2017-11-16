//pg  24
// kenny tries to stay safe but somehow everyday something happens. if there is a 10% chance of volcano
// 15% chance of tsunami 20% chance of earthquake 25% chance of blizzard and 30% chance of meteor strike write a function whathappenstoday() to print the outcome
function whathappenstoday(){
  var rando = Math.floor(Math.random() * 100) + 1 //get a random number between 1-100 and check which disaster will happen
  if(rando <= 10){
    console.log("volcano")
  }
  else if(rando > 10 && rando <=25){
    console.log('tsunami')
  }
  else if(rando > 25 && rando <=45){
    console.log('earthquake')
  }
  else if(rando >45 && rando <= 70){
    console.log('blizzard')
  }
  else if(rando >70){
    console.log('meteor strike')
  }
}
whathappenstoday()
