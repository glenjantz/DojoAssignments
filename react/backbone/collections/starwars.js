var starshipModel = Backbone.Model.extend({
  name: null,
  manufacturer: null,
  crew: null,
  cost_in_credits: null
})


var starshipCollection = Backbone.Collection.extend({
  model: starshipModel,
  url: "http://swapi.co/api/starships",
  parse: function(data){
    console.log(data.results)
    return data.results
  },
  falconchecker: function(data){
    console.log(data.models)
    
    console.log(hold)
  }

})

var starshipList = new starshipCollection();
starshipList.fetch().then(function(){
  console.log(starshipList.models)
})

console.log(starshipList)
starshipList.falconchecker(starshipList)
