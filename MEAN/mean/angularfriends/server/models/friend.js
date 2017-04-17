//require mongoose to set model
var mongoose = require('mongoose');
//make the schema
var FriendSchema = new mongoose.Schema({
  name: {type: String,
         required: [true, "name must be greater than 3 characters"],
         minlength: 3}
});
//set the schema
mongoose.model("Friend", FriendSchema);
