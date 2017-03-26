// For an additional challenge, add ‘-’ signs to scores in the bottom two
// percent of A, B, C and D scores, and “ +” signs to the top two percent of
//  B, C and D scores (sorry, Mr. Cerise never gives an A+).
//
// Example: Given 88, console.log "Score: 88. Grade: B+". Given 61,
//  log "Score: 61. Grade: D-".
function accurategrades(){
  var num = Math.floor(Math.random() * 101);
  if(num >= 90 && num <=100){
    if(num <= 92){
      console.log("Score: " + num + " grade: A-")
    }
    else if(num >= 98){
      console.log("Score: " + num + " grade: A+")
    }
    else{
      console.log("Score: " + num + " grade: A")
    }
  }
  if(num >= 80 && num <= 89){
    if(num <= 82){
      console.log("Score: " + num + " grade: B-")
    }
    else if(num >= 88){
      console.log("Score: " + num + " grade: B+")
    }
    else{
      console.log("Score: " + num + " grade: B")
    }
  }
  if(num >= 70 && num <= 79){
    if(num <= 72){
      console.log("Score: " + num + " grade: C-")
    }
    else if(num >= 78){
      console.log("Score: " + num + " grade: C+")
    }
    else{
      console.log("Score: " + num + " grade: C")
    }
  }
  if(num >= 60 && num <= 69){
    if(num <= 62){
      console.log("Score: " + num + " grade: D-")
    }
    else if(num >= 68){
      console.log("Score: " + num + " grade: D+")
    }
    else{
      console.log("Score: " + num + " grade: D")
    }
  }
  if(num <= 59){
    console.log("Score: " + num + " grade: F")
  }
}
accurategrades()
