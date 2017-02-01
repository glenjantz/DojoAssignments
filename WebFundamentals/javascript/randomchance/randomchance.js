function randomchance(numq){
  var winnings = 0;
  for (var i=numq;i>=1;i--){     //countdown how many quarters you have
    var reward = Math.floor(Math.random() *50+1)+50;      //calculates a random reward winning between 50 and 100
    if(Math.floor(Math.random()*100)+1 ===2){          //chance to win and variable to win =2
      winnings = i + reward;                   // winnings = reward + leftover quarters
      console.log(winnings);                     // logs how much was rewarded + leftover quarters
    }
  }
  return "0";                                 // returns 0 if you ran out of quarters
}
console.log(randomchance(100))
