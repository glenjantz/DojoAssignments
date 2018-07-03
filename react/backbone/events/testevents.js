var StudentModel = Backbone.Model.extend({
 defaults:{
  name: null
 },
 initialize: function(){
  this.listenTo(this, 'change', this.studentChange);
 },
 studentChange: function(){
  console.log("Change caught by model!");
 }
});

var student1 = new StudentModel();
student1.set('name','Leonardo');

var StudentCollection = Backbone.Collection.extend({
 model: StudentModel,
 initialize: function(){
  this.listenTo(this, 'change', this.studentChange);
  this.listenTo(this, 'add', this.studentAdded);
 },
 studentChange: function(){
  console.log("I sensed a change in one of my students!");
 },
 studentAdded: function(){
  console.log("New student added!");
 }
});
var student2 = new StudentModel({name: "glen"})
var student3 = new StudentModel({name: "alicia"})
var studentlist = [student1,student2,student3]
var mycollection = new StudentCollection(studentlist)
var student4 = new StudentModel({name: "tay"})
mycollection.add(student4)
