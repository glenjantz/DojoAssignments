// Turn the following problems from JS Fundamentals Part I into functions that take variable inputs
//
// Create a simple for loop that sums all the integers between x and y (inclusive). Have it console log the final sum.
function sumup(x,y){
  var sum = 0;
  for(var i =x;i<=y;i++){
    sum += i;
  }
  console.log(sum);
}
// sumup(1,10);


// Write a loop that will go through an array, find the minimum value, and then return it

function minarr(arr){
  var min = arr[0];
  for(var i = 1;i<arr.length;i++){
    if(arr[i] < min){
      min = arr[i];
    }
  }
  return min
}
// console.log(minarr([2,1,3,4,5]));

// Write a loop that will go through an array, find the average of all of the values, and then return it
function avgarr(arr){
  var sum = arr[0];
  for(var i = 1;i<arr.length;i++){
    sum += arr[i];
  }
  return sum/arr.length
}
// console.log(avgarr([1,2,3,4,5]))

// Rewrite these 3 as anonymous functions assigned to variables.
//
var mysums = function(x,y){
  var sum = 0;
  for(var i =x;i<=y;i++){
    sum += i;
  }
  console.log(sum);
}
// console.log(mysums(1,10))

var myminarrval = function (arr){
  var min = arr[0];
  for(var i = 1;i<arr.length;i++){
    if(arr[i] < min){
      min = arr[i];
    }
  }
  return min
}
// console.log(myminarrval([2,1,3,4,5]))


var myavgarrval = function(arr){
  var sum = arr[0];
  for(var i = 1;i<arr.length;i++){
    sum += arr[i];
  }
  return sum/arr.length
}
// console.log(myavgarrval([1,2,3,4,5]))


// Rewrite these as methods of an object
//
function mymethods(){
  this.mysums = function(x,y){
    var sum = 0;
    for(var i =x;i<=y;i++){
      sum += i;
    }
    console.log(sum);
  }
  this.myminarrval = function (arr){
    var min = arr[0];
    for(var i = 1;i<arr.length;i++){
      if(arr[i] < min){
        min = arr[i];
      }
    }
    return min
  }
  this.myavgarrval = function(arr){
    var sum = arr[0];
    for(var i = 1;i<arr.length;i++){
      sum += arr[i];
    }
    return sum/arr.length
  }
}

// var thing = new mymethods();
// thing.mysums(1,10)
// console.log(thing.myminarrval([2,1,3,4,5]))
// console.log(thing.myavgarrval([1,2,3,4,5]))

//The above problem was completed incorrectly...this is correct

var myobject = {
  mysums: function(x,y){
    var sum = 0;
    for(var i =x;i<=y;i++){
      sum += i;
    }
    return sum;
  },
  myarrmin: function (arr){
    var min = arr[0];
    for(var i = 1;i<arr.length;i++){
      if(arr[i] < min){
        min = arr[i];
      }
    }
    return min
  },
  myarravg: function(arr){
    var sum = arr[0];
    for(var i = 1;i<arr.length;i++){
      sum += arr[i];
    }
    return sum/arr.length
  }
}
console.log(myobject.mysums(1,5))
console.log(myobject.myarrmin([2,1,3,4,5]))
console.log(myobject.myarravg([2,1,3,4,5]))




// Create a JavaScript object called person with the following properties/methods
//
// Properties
// name - set this as your own name
//distance_traveled - set this initially as zero
// Methods
// say_name - should alert the object’s name property
//say_something - have it accept a parameter. This function should then say for example “{{your name}} says ‘I am cool’” if you pass ‘I am cool’ as an argument to this
// method.walk - have it alert for example “{{your name}} is walking” and increase distance_traveled by 3
//run - have it alert for example “{{your name}} is running” and increase distance_traveled by 10
//crawl - have it alert for example “{{your name}} is crawling” and increase distance_traveled by 1
// What should your methods return?

var person = {}
person = {
  name: "Glen",
  distance_traveled: 0,
  say_name: function(){
    console.log(person.name);
    return this
  },
  say_something: function(string){
    console.log(person.name + " says " + string)
    return this
  },
  walk: function(){
    console.log(person.name + " is walking ");
    person.distance_traveled += 3;
    return this
    // console.log(person.distance_traveled);
  },
  run: function(){
    console.log(person.name + " is running ");
    person.distance_traveled += 10;
    return this

    // console.log(person.distance_traveled);
  },
  crawl: function(){
    console.log(person.name + " is crawling ");
    person.distance_traveled += 1;
    return this
    // console.log(person.distance_traveled);
  }

}
// person.say_name()
// person.say_something("I am cool")
// person.walk()
// person.run()
// person.crawl()
// person.walk().run()
