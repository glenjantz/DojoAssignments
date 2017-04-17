//require mongoose to set model
var mongoose = require('mongoose');
//make the schema
var FriendSchema = new mongoose.Schema({
  name: {type: String,
         required: true}
});
//set the schema
mongoose.model("Friend", FriendSchema);
