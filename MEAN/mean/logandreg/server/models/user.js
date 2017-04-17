//require mongoose to set model
var mongoose = require('mongoose');
require('mongoose-type-email');
var bcrypt = require('bcryptjs');
var reg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
//make the schema
var UserSchema = new mongoose.Schema({
  email: {type: mongoose.SchemaTypes.Email,
          required: true},
  fname: {type: String,
         required: [true,"first name must be at least 3 characters"],
          minlength: 3},
  lname: {type: String,
          required: [true,"last name must be at least 3 characters"],
           minlength: 3},
  pass: {type: String,
         required: [true,"password must be at least 8 characters"],
          minlength: 8},
  bday: {type: Date,
         required: [true,"birthday must be MM-DD-YYYY format"]}
},{timestamps: true});



UserSchema.methods.generateHash = function(pass) {
    return bcrypt.hashSync(pass, bcrypt.genSaltSync(8));
};

// checking if password is valid
UserSchema.methods.validPassword = function(pass) {
    return bcrypt.compareSync(pass, this.pass);
};

UserSchema.pre('save', function(done) {
    this.pass = this.generateHash(this.pass);
    done();
});
//set the schema
mongoose.model("User", UserSchema);
