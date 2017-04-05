// Modify your VehicleConstructor (from earlier) to use this & new (and follow the JS conventions talked about in the previous chapters).
//  To recap, here were the requirements from Part I:
//
// Create a vehicleConstructor that takes in the name, number of wheels, and number of passengers Each vehicle should have a makeNoise method Using
//  the constructor, create a Bike redefine the Bike’s makeNoise method to print “ring ring!” Using the constructor,
//  create a Sedan redefine the Sedan’s makeNoise method to print “Honk Honk!” Using the constructor, create a Bus Give the bus a
//  pickUpPassengers method that takes in the number of passengers to pick up and adds them to the passenger count
// Then make the following modifications:
//
// Have the Vehicle constructor also take in a “speed” Store the speed as an attribute Create a private variable called distance_travelled
//  that starts at 0 Create a private method called updateDistanceTravelled that increments distance traveled by speed Add a method to the
//  Vehicle called “move” that calls updateDistanceTravelled and then makeNoise Add a method called checkMiles that console.logs the distance_travelled
// Bonus: Use ES6 Class!
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/ Classes
//
// Note: Making truly (or almost truly) private vars using ES6 classes is rather advanced at this point in your JS development career.
function VehicleConstructor(name, wheels, passengers, speed){
  var self = this;
  var distance_travelled = 0;
  var updateDistanceTravelled = function(){
    distance_travelled += speed;
  }
  this.name = name;
  this.wheels = wheels;
  this.passengers = passengers;
  this.speed = speed;
  this.makeNoise = function(){
    console.log("ring ring!");
  }
  this.move = function(){
    updateDistanceTravelled();
    this.makeNoise()
  }
  this.checkMiles = function(){
    console.log(distance_travelled + "miles traveled");
  }
  // this.pickUp = function(num){
  //   this.passengers += num;
  // }

}
var Bus = new VehicleConstructor("Bus",18,0,10);
Bus.makeNoise = function(){
  console.log("Honk Honk!");
}
// Bus.makeNoise()
Bus.pickUp = function(num){
  this.passengers += num;
  return this
}
console.log(Bus.passengers)
Bus.pickUp(1).pickUp(2)
console.log(Bus.passengers)
// Bus.checkMiles()
// Bus.move()
// Bus.checkMiles()
