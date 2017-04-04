//Create a function that takes in one parameter called “name” and returns an object that looks similar to the person object from JS Fundamentals Part II.
//Running this in your terminal as you create it can be super helpful since we aren’t manipulating the DOM!

// The returned object should have a name property that is set to the value of the name argument that was passed into the function.
// Each returned person object should also have the other properties from JS Fundamentals Part II:
// distance_traveled - set this initially as zero say_name - should alert the object’s name property say_something
//- have it accept a parameter. It should then say for example “Jay says ‘I am cool’” if you pass ‘I am cool’ as an argument to this method.
// walk - have it alert for example “Jay is walking” and increase distance_traveled by 3 run - have it alert for example “Jay is running”
// and increase distance_traveled by 10 crawl - have it alert for example “Jay is crawling” and increase distance_traveled by 1




function personConstructor(name){
  var thing = {};
  thing = {
  name: name,
  distance_traveled: 0,
  say_name: function(){
    console.log(name);
  },
  say_something: function(string){
    console.log(name + " says " + string)
  },
  walk: function(){
    console.log(name + " is walking ");
    thing.distance_traveled += 3;
    return thing
    // console.log(person.distance_traveled);
  },
  run: function(){
    console.log(name + " is running ");
    thing.distance_traveled += 10;
    return thing
    // console.log(person.distance_traveled);
  },
  crawl: function(){
    console.log(name + " is crawling ");
    thing.distance_traveled += 1;
    return thing
    // console.log(person.distance_traveled);
  }
};
return thing
}
// var Glen = personConstructor("Glen");
// console.log(Glen.name)
// console.log(Glen.distance_traveled)
// console.log(Glen.say_something("I am cool"))
// console.log(Glen.walk())
// console.log(Glen.run())
// console.log(Glen.crawl())
// console.log(Glen.walk().run())

//Now create a ninjaConstructor that can be used to create Ninjas that each has a name, cohort, and belt-level.
// Give all of the Ninjas a “levelUp” method that increases their belt-level (Have all ninjas start at a yellow-belt).

function ninjaConstructor(name,cohort){
  var thing = {};
  var belts = ["yellow-belt","red-belt","yellow-belt"];
  var count = 0;
  thing = {
    name: name,
    cohort: cohort,
    beltlevel: belts[count],
    levelup: function(){
      if(count <=2){
        count += 1;
        thing.beltlevel = belts[count];
      }
      return thing
    }
  }
  return thing
}
var test = ninjaConstructor("glen","3rd stack")
console.log(test.name)
console.log(test.cohort)
console.log(test.beltlevel)
console.log(test.levelup())
console.log(test.beltlevel)
