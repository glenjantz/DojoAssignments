// Create celsiusToFahrenheit(cDegrees) that accepts the number of degrees Celsius, and returns the equivalent temperature expressed in Fahrenheit degrees.
//
// (optional) Do Fahrenheit and Celsius values equate at a certain number?
// The scientific calculation can be complex, so for this challenge just try a series of Celsius integer values starting at 200,
//  going downward (descending), checking whether it is equal to the corresponding Fahrenheit value.
function celsiusToFahrenheit(cDegrees){
  return (9/5 * cDegrees) + 32
}
function ftoc(degrees){
  return (degrees - 32) * 5/9
}
// For review, Fahrenheit = (9/5 * Celsius) + 32.
// console.log(celsiusToFahrenheit(32));

function equaldegrees(){
 for(var i = -200;i<=200;i++){
   if(celsiusToFahrenheit(i) == ftoc(i)){
     console.log("they are equal at" + " " + i + " " + "degrees");
   }
 }
}
equaldegrees();
