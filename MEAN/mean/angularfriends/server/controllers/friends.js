//require mongoose to use the schema
var mongoose = require('mongoose');
//use the schema
var Friend = mongoose.model('Friend');
console.log('friends controller');
//export db queries and actions
module.exports = {
  index: function(req,res){
    Friend.find({}, function(err, friends){
      if(err){
        console.log('something went wrong finding the friends', err);
        res.json({errors: err});
      }else{
        res.json(friends);
      }
    });
  },
  create: function(req,res){
      var friend = new Friend({
        name: req.params.name
      });
      friend.save(function(err){
        if(err){
          console.log('something went wrong saving the person').
          res.json(err);
        }else{
          res.redirect('/friends');
        }
      });
    },
  show: function(req, res){
    Friend.findOne({name: req.params.name}, function(err, friend){
      if(err){
        console.log('something went wrong finding the person');
        res.json(err);
      }else{
        res.json(friend);
      }
    });
  },
  deleted: function(req,res){
    Friend.remove({name: req.params.name}, function(err, friends){
      if(err){
        console.log('something went wrong deleting');
        res.json(err);
      }else{
        res.redirect('/friends');
      }
    });
  },
  update: function(req,res){
    Friend.update({name: req.params.name},{
      name: req.params.updatedname
    },function(err){
      if(err){
        console.log("something went wrong with editing");
        res.json(err);
      }else{
        console.log("successful edit");
        res.redirect('/friends')
      }
    });
  }
}
