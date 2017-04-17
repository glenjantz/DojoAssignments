//require mongoose to use the schema
var mongoose = require('mongoose');
//use the schema
var User = mongoose.model('User');
//export db queries and actions
module.exports = {
  //find all return all
  index: function(req,res){
    User.find({}, function(err, users){
      if(err){
        console.log('something went wrong finding the friends', err);
      }else{
        res.json(users);
      }
    });
  },
  //create one using bpjson
  register: function(req,res){
    console.log('this is the req.body', req.body);
    User.create(req.body, function (err, user) {
      if (err) {
        console.log(err);
        res.json(err);
      }else {
        res.json(user)
      }
    });
  },
  login: function(req, res){
    console.log('this is the req.body', req.body);
    User.findOne({email: req.body.email}, function(err, user){
      if(err){
        console.log('errored finding the email')
        res.json({errors: {login: {message: "invalid email or pass"}}});
      }else if(user && user.validPassword(req.body.pass)){
        res.json({_id: user._id, name: user.fname})
      }else{
        res.json({errors: {login: {message: "invalid email or pass"}}})
      }
    })
  }
}
