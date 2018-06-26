var _ = require("underscore");

var myState = {
 name: "Washington",
 capital: "Olympia",
 population: 7062000,
 nickname: "The Evergreen State"
};
var businesses = [
 {
  name: "Coding Dojo",
  city:  "Bellevue"
 },
 {
  name: "Facebook",
  city: "Mountain View"
 },
 {
  name: "Microsoft",
  city: "Redmond"
 },
 {
  name: "Expedia",
  city: "Bellevue"
 }
];

//1) Strip the myState object into two arrays, one filled with its keys, the other with its values.

var keyarray = [],
    valarray = [];
var test = _.each(myState, function(value,key){keyarray.push(key),valarray.push(value)})
console.log(keyarray,valarray)

//2) Using these two new arrays, put them back together as an object to resemble the original myState object.

var zipped = _.zip(keyarray,valarray)
console.log(zipped)

//3) Alert each of the key - value pairs of the myState object.
// console.log(_.each(myState, function(value, key){ alert(key+': '+value); }));   //need html file to work

//4 Return just the names of the businesses from the businesses array.

var buisnames = _.pluck(businesses, "name")
console.log(buisnames)

//5 Return the object containing “Microsoft”.

var micro = _.where(businesses, {name: "Microsoft"})
console.log(micro)

//6Return all the businesses that are located in Bellevue in a new array.

var bell = _.filter(businesses, function(businesses){return businesses.city =="Bellevue"})
console.log(bell)

//7 Sort the businesses based on the city in ascending order and return the array.

var sortbycity = _.sortBy(businesses, "city")
console.log(sortbycity)

//8Have all the business names be “Coding Dojo” without altering the original array. [hint: use _.map()]

var changed = _.map(businesses, function(item){item.name = "Coding Dojo"; console.log(item)})
// console.log(changed)
