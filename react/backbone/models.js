var userModel = Backbone.Model.extend({
  defaults: {
    name: null,
    age: null
  }
})

var user1 = new userModel({name: "Johnny", age: 21})

// console.log(user1)

var bookModel = Backbone.Model.extend({
  defaults: {
    title: null,
    author: null
  },
  initialize: function(){
    console.log("I am alive")
  },
  validate: function(attrs, options){
    if (!attrs.author){
      return "Book must have an author";
    }
  }
})


// var myBook = new bookModel()
// console.log(myBook)
// myBook.set('title', "where the wild things are")
// console.log(myBook)
// console.log(myBook.get('title'))


var malware = new bookModel({title: "<script>alert('gotcha!')</script>"});
var escapedString = malware.escape('title');
console.log(escapedString)

var myBook = new bookModel({title: "Charlotte's Web"});
myBook.on('invalid', function(model, error){
  alert(model.get('title')+" found to be invalid. Reason: "+error);
});
myBook.save();
