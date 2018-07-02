var PersonModel = Backbone.Model.extend({
  defaults:{
    name: null
  }
});

var badGuy = new PersonModel({name: "Oddjob"});
console.log(badGuy);

var greetingTemplate = _.template(
  "<h1>Hey there, <%= name %></h1>"
);
console.log(badGuy.toJSON())
console.log(greetingTemplate(badGuy.toJSON())); // <h1>Hey there, </h1>

$(document).ready(function(){
 $('body').append(greetingTemplate(badGuy.toJSON()));
});
