var userModel = Backbone.Model.extend({
  defaults: {
    name: null,
    age: null
  }
})

var user1 = new userModel({name: "Johnny", age: 21})

console.log(user1)

var bookModel = Backbone.Model.extend({
  defaults: {
    title: null,
    author: null
  },
  initialize: function(){
    console.log("I am alive")
  }
})


var myBook = new bookModel()
console.log(myBook)
myBook.set('title', "where the wild things are")
console.log(myBook)
console.log(myBook.get('title'))
