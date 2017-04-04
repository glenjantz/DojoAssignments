// We are going to create our very own constructor.
//  Create a VehicleConstructor that takes in the name, number of wheels, and the number of passengers. Then complete the following tasks:
 function VehicleConstructor(name,numwheels,numpassengers){
   var vehicle = {};

     vehicle.name = name;
     vehicle.numWheels = numwheels;
     vehicle.numPassengers = numpassengers;
    //Each vehicle should have a makeNoise method
     vehicle.makeNoise = function(){
      console.log("Vroom");
    }
    return vehicle
   }
// Using the constructor, create a Bike
 var Bike = VehicleConstructor("ExpensiveBike",2,1);
//  Bike.makeNoise();
// console.log(Bike.name);
// console.log(Bike.numWheels);
// console.log(Bike.numPassengers);
// Redefine the Bike’s makeNoise method to print “ring ring!”
Bike.makeNoise = function(){
  console.log('ring ring!');
}
// Bike.makeNoise();
// Create a Sedan
var Sedan = VehicleConstructor("Black Sedan",4,5);
// Redefine the Sedan’s makeNoise method to print “Honk Honk!
Sedan.makeNoise = function(){
  console.log('Honk Honk!');
}
// Sedan.makeNoise()

// Using the constructor, create a Bus
var Bus = VehicleConstructor("Bus",18,50);
// Add a method to Bus that takes in the number of passengers to pick up and adds them to the passenger count
Bus.passengerCount = 0;
Bus.pickUp = function(){
  Bus.passengerCount += 1;
  // return Bus
};
console.log(Bus.passengerCount);
Bus.pickUp();
console.log(Bus.passengerCount);
