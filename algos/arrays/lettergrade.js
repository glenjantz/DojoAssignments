//
// Mr. Cerise teaches high school math. Write a function that assigns and prints
// a letter grade, given an integer representing a score from 0 to 100?
// Those getting 90+ get an ‘A’, 80-89 earn ‘B’, 70-79 is a ‘C’, 60-69 should
//  get a ‘D’, and lower than 60 receive ‘F’.
//
// Example: given 88, you should log "Score:88. Grade: B". Given the score 61,
//  log the string "Score: 61. Grade: D".
function lettergrade(num){
  if(num >= 90 && num <=100){
    console.log("Score: " + num + " grade: A")
  }
  if(num >= 80 && num <= 89){
    console.log("Score: " + num + " grade: B")
  }
  if(num >= 70 && num <= 79){
    console.log("Score: " + num + " grade: C")
  }
  if(num >= 60 && num <= 69){
    console.log("Score: " + num + " grade: D")
  }
  if(num <= 59){
    console.log("Score: " + num + " grade: F")
  }
}
// OR //
function randlettergrade(){
  var num = Math.floor(Math.random() * 101);
  if(num >= 90 && num <=100){
    console.log("Score: " + num + " grade: A")
  }
  if(num >= 80 && num <= 89){
    console.log("Score: " + num + " grade: B")
  }
  if(num >= 70 && num <= 79){
    console.log("Score: " + num + " grade: C")
  }
  if(num >= 60 && num <= 69){
    console.log("Score: " + num + " grade: D")
  }
  if(num <= 59){
    console.log("Score: " + num + " grade: F")
  }
}
randlettergrade()
