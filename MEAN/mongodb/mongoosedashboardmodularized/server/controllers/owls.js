var mongoose = require('mongoose');
var Owl = mongoose.model('Owl');
module.exports = {
  show: function(req, res) {
    Owl.find({}, function(err, owls){
      if(err){
        console.log('something went wrong finding the owls', err);
        res.render('index');
      }else{
        res.render('index', {owls: owls});
      }
    });
  },
  create: function(req, res) {
    // console.log("POST DATA", req.body);
    var owl = new Owl({
      name: req.body.name,
      numlegs: req.body.numlegs,
      size: req.body.size
    });
    owl.save(function(err){
      if(err){
        console.log('something went wrong');
        res.render('new', {errors: owl.errors})
      }else{
        res.redirect('/')
      }
    });
  },
  showthisone: function(req, res){
    Owl.find({_id:req.params.id}, function(err, owls){
      if(err){
        console.log('your owl is missing');
        res.render('solobird')
      }else{
        res.render('solobird', {owls:owls[0]})
      }
    });
  },
  editthisone: function(req, res){
    Owl.find({_id: req.params.id}, function(err,owls){
      if(err){
        console.log('something went wrong finding the owl');
      }else{
        console.log('successful edit loaded');
        res.render('editbird', {owls:owls[0]});
      }
    });
  },
  updatethisone: function(req, res){
    Owl.update({_id: req.params.id},{
      name: req.body.name,
      numlegs: req.body.numlegs,
      size: req.body.size
    }, {runValidators: true}, function(errr){
      if(errr){
        console.log("something went wrong with editing");
        Owl.find({_id: req.params.id}, function(err,owls){
          if(err){
            console.log('something went wrong finding the owl');
          }else{
            res.render('editbird', {owls:owls[0], errors: errr.errors});

          }
        });
      }else{
        console.log("successful edit");
        res.redirect('/')
      }
    });
  },
  removethisone: function(req, res){
    Owl.remove({_id: req.params.id}, function(err){
      if(err){
        console.log('something went wrong with the delete');
      }else{
        console.log('successfully deleted bird');
        res.redirect('/')
      }
    });
  }

}
