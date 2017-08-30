// Part I
// Recreate the base Ninja class from scratch using ES6 classes. Your Ninja needs the following attributes:
// name
// health
// speed
// strength
// Speed and strength should be 3 by default. Health should be 100 by default.
// The Ninja class should have the following methods:
// sayName() - This should log that Ninja's name to the console.
// showStats() - This should show the Ninja's Strength and Speed, as well as their health.
// drinkSake() - This should add +10 Health to the Ninja
// Part II - Sensei Class
// Extend the Ninja class and create the Sensei class. A Sensei should have 200 Health, 10 speed, and 10 strength by default.
//  In addition, a Sensei should have a new attribute called wisdom, and the default should be 10. Finally, add the speakWisdom() method.
//   speakWisdom() should call the drinkSake() method from the Ninja class, before console.logging a wise message.
class Ninja{
  constructor(name){
    this.name = name;
    this.health = 100;
    this.strength = 3;
    this.speed = 3;
  }
  sayName(){
    console.log(`My ninja name is ${this.name}`);
    return this
  }
  showStats(){
    console.log(`this is my health ${this.health} and this my strength ${this.strength} and this is my speed ${this.speed}`)
    return this
  }
  drinkSake(){
    this.health += 10
    return this
  }
}
var ninja1 = new Ninja("sneaky")
ninja1.sayName().showStats().drinkSake().showStats()
class Sensei extends Ninja{
  constructor(name){
    super(name);
    this.name = name;
    this.health = 200;
    this.strength = 10;
    this.speed = 10;
    this.wisdom = 10;
  }
  speakWisdom(){
    super.drinkSake();
    console.log('this is a wise message')
    return this
  }
  showStats(){
    console.log(`this is my health ${this.health} and this my strength ${this.strength} and this is my speed ${this.speed} and this is my wisdom ${this.wisdom}`)
    return this
  }
}
sensei1 = new Sensei("master")
sensei1.sayName().showStats().speakWisdom().showStats()
