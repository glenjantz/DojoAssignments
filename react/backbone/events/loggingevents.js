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


var StudentCollection = Backbone.Collection.extend({
   model: StudentModel,
   initialize: function(){
    this.listenTo(this, 'change', this.studentChange);
    this.listenTo(this, 'add', this.studentAdded);
    this.listenTo(this, 'remove', this.studentRemoved);
   },
   studentChange: function(){
    console.log("I sensed a change in one of my students!");
   },
   studentAdded: function(){
    console.log("New student added!");
  },
  studentRemoved: function(){
    console.log("Student removed")
  }
})

var student1 = new StudentModel({name: "Glen"})
var student2 = new StudentModel({name: "Alicia"})
var student3 = new StudentModel({name: "Tay"})
var student4 = new StudentModel({name: "Gizmo"})

var students = [student1,student2,student3,student4]
var studentlist = new StudentCollection(students)
student1.set('name', "Glenny")
studentlist.remove(studentlist.where({name: "Glenny"}))
var student5 = new StudentModel({name: "Bozo"})
var student6 = new StudentModel({name: "the clown"})
studentlist2 = [student5,student6]
studentlist.add(studentlist2)
studentlist.remove(studentlist2)
