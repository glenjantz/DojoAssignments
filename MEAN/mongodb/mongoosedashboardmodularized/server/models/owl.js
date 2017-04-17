var mongoose = require('mongoose');
var OwlSchema = new mongoose.Schema({
  name: {type: String,
         required: [true, "name must be greater than 3 characters"],
         minlength: 3},
  numlegs: {type: Number,
           required: [true, "number of legs must be a number"]},
  size: {type: String,
         required: [true, "Size must be a string greater than 3 characters"],
         minlength: 3}
});
//set the schema
mongoose.model("Owl", OwlSchema);
//use the schema
var Owl = mongoose.model("Owl");
