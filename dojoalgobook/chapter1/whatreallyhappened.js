//pg 24
//kyle(smarter than kenny) notes that the chance of one disaster is totally unrelated to the chance of another.
// Change whathappentoday() function to create whatreallyhappenedtoday() in this new function test for each disaster independently
//instead of assuming exactly one disaster will happen. in other words with this new function all five might occur today or none maybe kenny will survive
function whatreallyhappenedtoday(){
  var chanceofvolcano = Math.floor(Math.random()* 100 + 1)   //generate 5 random individual numbers between 1-100
  var chanceoftsunami = Math.floor(Math.random()* 100 + 1)
  var chanceofearthquake = Math.floor(Math.random()* 100 + 1)
  var chanceofblizzard = Math.floor(Math.random()* 100 + 1)
  var chanceofmeteor = Math.floor(Math.random()* 100 + 1)
  if(chanceofvolcano <=10){     //check which disasters will happen
    console.log("volcano")
  }
  if(chanceoftsunami >10 && chanceoftsunami <= 25){
    console.log('tsunami')
  }
  if(chanceofearthquake >25 && chanceofearthquake <= 45){
    console.log('earthquake')
  }
  if(chanceofblizzard >45 && chanceofblizzard <= 70){
    console.log('blizzard')
  }
  if(chanceofmeteor > 70){
    console.log('meteor')
  }
}
// whatreallyhappenedtoday()

//OR

function getrando(){  //function to get a random number between 1-100
  return Math.floor(Math.random()*100 + 1)
}
function whatreallyhappened2(){
  //check if each disaster will happen
  if(getrando() <= 10){
    console.log('volcano')
  }
  if(getrando() <=15){
    console.log('tsunami')
  }
  if(getrando() <=20){
    console.log('earthquake')
  }
  if(getrando() <=25){
    console.log('blizzard')
  }
  if(getrando() <=30){
    console.log('meteor')
  }
}

whatreallyhappened2()
