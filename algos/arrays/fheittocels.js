// Kelvin wants to convert between temperature scales. Create fahrenheitToCelsius(fDegrees) that accepts a number of degrees in Fahrenheit,
//  and returns the equivalent temperature as expressed in Celsius degrees.
// For review, Fahrenheit = (9/5 * Celsius) + 32.
function fahrenheitToCelsius(dgrees){
  return (dgrees - 32) * 5/9
}
//celsuis = (fheit - 32) * 5/9
console.log(fahrenheitToCelsius(100));