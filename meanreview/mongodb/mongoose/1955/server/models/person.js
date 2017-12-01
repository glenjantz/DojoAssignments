var mongoose = require('mongoose')
var PeopleSchema = new mongoose.Schema({
  name: {type: String,
         required: true,
         minlength: 1}
});
//set the schema
mongoose.model("Person", PeopleSchema);
//use the schema
var Person = mongoose.model("Person");
