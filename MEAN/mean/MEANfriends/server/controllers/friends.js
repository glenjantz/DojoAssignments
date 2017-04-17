//require mongoose to use the schema
var mongoose = require('mongoose');
//use the schema
var Friend = mongoose.model('Friend');
console.log('friends controller');
//export db queries and actions
module.exports = {
  //find all return all
  index: function(req,res){
    Friend.find({}, function(err, friends){
      if(err){
        console.log('something went wrong finding the friends', err);
      }else{
        res.json(friends);
      }
    });
  },
  //create one using bpjson
  create: function(req,res){
    console.log('this is the req.body', req.body);
    Friend.create(req.body, function (err, friend) {
      if (err) {
        console.log(err);
      }else {
        res.json(friend)
      }
    });
    },
    //show one using id from url and return one
  show: function(req, res){
    Friend.findOne({_id: req.params.id}, function(err, friend){
      if(err){
        console.log('something went wrong finding the person');
      }else{
        res.json(friend);
      }
    });
  },
  //delete one using id from url and return a message
  deleted: function(req,res){
    Friend.remove({_id: req.params.id}, function(err){
      if(err){
        console.log('something went wrong deleting');
      }else{
        res.json({deleted: true});
      }
    });
  },
  //update one using id from url and BPjson data and then return the updated user
  update: function(req,res){
  Friend.findOne({_id: req.params.id}, function(err, friend){
    if (err){
      console.log('couldnt find the one to update');
    }else{
      friend.fname = req.body.fname;
      friend.lname = req.body.lname;
      friend.bday = req.body.bday;
      friend.save(function(err, updatedFriend){
        if(err){
          console.log('failed to save the update');
        }else{
          res.json(updatedFriend)
        }
      })
    }
  })
  }
}
