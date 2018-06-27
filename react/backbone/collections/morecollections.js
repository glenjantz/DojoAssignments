var TravelTimeModel = Backbone.Model.extend({
 defaults:{
 }
});
var TravelTimeCollection = Backbone.Collection.extend({
 model: TravelTimeModel,
 url: "http://wsdot.com/Traffic/api/TravelTimes/TravelTimesREST.svc/GetTravelTimesAsJson?AccessCode=e901f9a2-936d-49fb-90a7-304f89fb5431",
//  parse: function(data){
//   return data.length;
// }
})
var travelTimes = new TravelTimeCollection();



// The travelTimes collection
travelTimes.fetch().then(function(){
  console.log(travelTimes)
})

// The length of the travelTimes collection
travelTimes.fetch().then(function(){
  console.log(travelTimes.length)
})

// The 30th model in the list [Requirement: use the at() method]
travelTimes.fetch().then(function(){
  console.log(travelTimes.at(30))
})

// The CurrentTime of the first model [Do this without using at()]
travelTimes.fetch().then(function(data){
  console.log(travelTimes.models[0].attributes.CurrentTime)
})
// All the models with a CurrentTime of 10
travelTimes.fetch().then(function(){
  console.log(travelTimes.where({CurrentTime: 10}))
})
// The first model with the Name: "Bellevue-Seattle via 520 (WB PM)"
travelTimes.fetch().then(function(){
  console.log(travelTimes.findWhere({Name: "Bellevue-Seattle via 520 (WB PM)"}))
})
