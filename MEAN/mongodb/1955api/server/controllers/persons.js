var mongoose = require('mongoose');
var Person = mongoose.model('Person');
module.exports = {
  show: function(req, res) {
    Person.find({}, function(err, persons){
      if(err){
        console.log('something went wrong finding the owls', err);
        res.json({errors: err});
      }else{
        res.json(persons);
      }
    });
  },
  create: function(req,res){
      var person = new Person({
        name: req.params.name
      });
      person.save(function(err){
        if(err){
          console.log('something went wrong saving the person').
          res.json(err);
        }else{
          res.redirect('/');
        }
      });
    },
    delete: function(req,res){
      Person.remove({name: req.params.name}, function(err, persons){
        if(err){
          console.log('something went wrong deleting');
          res.json(err);
        }else{
          res.redirect('/');
        }
      });
    },
    findone: function(req, res){
      Person.findOne({name: req.params.name}, function(err, person){
        if(err){
          console.log('something went wrong finding the person');
          res.json(err);
        }else{
          res.json(person);
        }
      });
    }
  }
