// Modify your Vehicle Class to take advantage of Prototypes!
//
// To recap, here is what we did in Parts I & II:
//
// Create a VehicleConstructor that takes in the name, number of wheels, and number of passengers
//
// Each vehicle should have a makeNoise methodUsing the constructor, create a Bikeredefine the Bike’s makeNoise method to print “ring ring!”
//  Using the constructor, create a Sedanredefine the Sedan’s makeNoise method to print “Honk Honk!”Using the constructor, create a BusGive
//   the bus a pickUpPassengers method that takes in the number of passengers to pick up and adds them to the passenger count
// Then make the following modifications:
//
// Have the Vehicle constructor also take in a “speed”Store the speed as an attributeCreate a private variable called distance_travelled
//  that starts at 0Create a private method called updateDistanceTravelled that increments distance traveled by speedAdd a method to the
//   Vehicle called “move” that calls updateDistanceTravelled and then makeNoiseAdd a method called checkMiles that console.logs the distance_travelled
// Now modify your code to use Prototype and the recommended way of OOP we showed in the previous chapter.
//
// You may have to change some private variables/methods to attributes to make all of the functionality work.
//
// Then make the following additions:
//
// Have each vehicle generate a random VIN number (study Math.random & Math.floor). Don’t worry about potential duplicates for now.

function VehicleConstructor(name, wheels, passengers, speed){
  var self = this;
  var distance_travelled = 0;
  var updateDistanceTravelled = function(){
    distance_travelled += self.speed;
  }
  var count = 0;
  var status = true;
  var char = "";

  var createVin = function(){
    for(var i=0;i<=30;i++){
      char += Math.floor(Math.random()*35);
    }
  }
    createVin();



  this.vin = char
  this.name = name;
  this.wheels = wheels;
  this.passengers = passengers;
  this.speed = speed;
  // this.makeNoise = function(){
  //   console.log("ring ring!");
  // }
  this.move = function(){
    updateDistanceTravelled();
    this.makeNoise()
    return this
  }
  this.checkMiles = function(){
    console.log(distance_travelled + " miles traveled");
    return this
  }
  // this.pickUp = function(num){
  //   this.passengers += num;
  //   return this
  // }

}
VehicleConstructor.prototype.makeNoise = function(){
  console.log("ring ring");
  return this
}
VehicleConstructor.prototype.pickUp = function(num){
  this.passengers += num;
  return this
}



var bus = new VehicleConstructor("bus",4,0,10)
bus.makeNoise()
bus.checkMiles()
bus.pickUp(1)
console.log(bus.passengers)
console.log(bus.vin)
