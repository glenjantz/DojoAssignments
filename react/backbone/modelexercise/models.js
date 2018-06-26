var stackModel = Backbone.Model.extend({
 defaults: {
   title: null,
   language: null,
   instructor: null
 },
 initialize: function(){
   this.set('instructor', "Michael Choi")
 }
})

var myStack = new stackModel({instructor: "Me", title: "react",language: "js"})
console.log(myStack)
// myStack.set('instructor', "me")
console.log(myStack)
