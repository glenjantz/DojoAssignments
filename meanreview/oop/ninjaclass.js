// Create a new class called Ninja with the following attributes:
// name
// health
// speed (private)
// strength (private)
// Speed and strength should be 3 by default. Health should be 100 by default.
// The Ninja class should have the following methods:
// sayName() - This should log that Ninja's name to the console.
// showStats() - This should show the Ninja's Strength and Speed, as well as their health.
// drinkSake() - This should add +10 Health to the Ninja
// Example Outputs
// var ninja1 = new Ninja("Hyabusa");
// ninja1.sayName();
// // -> "My ninja name is Hyabusa!"
// ninja1.showStats();
// // -> "Name: Hayabusa, Health: 100, Speed: 3, Strength: 3"

function Ninja(name){
  this.name = name;
  this.health = 100;
  var speed = 3;
  var strength = 3;
  this.showStats = function(){
    console.log("this is my speed ", speed, " and this is my strength ", strength, " and this is my health ", this.health)
    return this
  }
}
Ninja.prototype.sayName = function(){
  console.log("my name is ", this.name)
  return this
}
Ninja.prototype.drinkSake = function(){
  this.health += 10
  return this
}
var ninja1 = new Ninja("sneaky")
ninja1.sayName().showStats().drinkSake().showStats()
