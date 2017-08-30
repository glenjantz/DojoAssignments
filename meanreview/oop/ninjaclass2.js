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
// Complete the below challenges using the Ninja Class from the previous assignment.
// punch()
// Add a new method to your Ninja class called .punch().
//  This method will take another Ninja instance and subtract 5 Health from the Ninja we passed in.
// Your .punch() should display a console message like the below example.
// var blue_ninja = new Ninja("Goemon");
// var red_ninja = new Ninja("Bill Gates");
// red_ninja.punch(blue_ninja);
// // -> "Goemon was punched by Bill Gates and lost 5 Health!"
// kick()
// Now add a method to your Ninja class called .kick().
// Kick will subtract 15 Health for each point of Strength the calling Ninja has, and like .punch() will take another Ninja instance.
// blue_ninja.kick(red_ninja);
// // -> "Bill Gates was kicked by Goemon and lost 15 Health!"
// Validations
// Update .punch() and .kick() so that they only accept Instances of the Ninja class.
//  Hint: You will need to find a way to check the constructor of an instance.
//   You will often need to consult outside documentation to find solutions for particular features.

function Ninja(name){
  this.name = name;
  this.health = 100;
  var speed = 3;
  var strength = 3;
  this.showStats = function(){
    console.log("this is my speed ", speed, " and this is my strength ", strength, " and this is my health ", this.health)
    return this
  }
  this.kick = function(ninja){
    var damage = strength*15;
    ninja.health -= damage;
    console.log(ninja.name, " was kicked by", this.name, "for ", damage, " health")
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
Ninja.prototype.punch = function(ninja){
  ninja.health -= 5;
  console.log(ninja.name, " was punched by ", this.name, " and lost 5 health")
  return this
}
var ninja1 = new Ninja("sneaky")
var ninja2 = new Ninja("fatty")
ninja1.sayName().showStats().drinkSake().showStats()
ninja1.punch(ninja2)
ninja2.showStats()
ninja1.kick(ninja2)
ninja2.showStats()
