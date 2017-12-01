var mongoose = require('mongoose');
var Rabbit = mongoose.model('Rabbit');
module.exports = {
  show: function(req, res) {
    Rabbit.find({}, function(err, rabbits){
      if(err){
        console.log('something went wrong finding the rabbits', err);
        res.render('index');
      }else{
        res.render('index', {rabbits: rabbits});
      }
    });
  },
  create: function(req, res) {
    // console.log("POST DATA", req.body);
    var rabbit = new Rabbit({
      name: req.body.name,
      babies: req.body.babies,
      size: req.body.size
    });
    rabbit.save(function(err){
      if(err){
        console.log('something went wrong');
        res.render('new', {errors: rabbit.errors})
      }else{
        res.redirect('/')
      }
    });
  },
  showthisone: function(req, res){
    Rabbit.find({_id:req.params.id}, function(err, rabbit){
      if(err){
        console.log('your rabbit is missing');
        res.render('single')
      }else{
        res.render('single', {rabbit:rabbit[0]})
      }
    });
  },
  editthisone: function(req, res){
    Rabbit.find({_id: req.params.id}, function(err,rabbits){
      if(err){
        console.log('something went wrong finding the rabbit');
      }else{
        console.log('successful edit loaded');
        res.render('edit', {rabbit:rabbits[0]});
      }
    });
  },
  updatethisone: function(req, res){
    Rabbit.update({_id: req.params.id},{
      name: req.body.name,
      babies: req.body.babies,
      size: req.body.size
    }, {runValidators: true}, function(errr){
      if(errr){
        console.log("something went wrong with editing");
        Rabbit.find({_id: req.params.id}, function(err,rabbits){
          if(err){
            console.log('something went wrong finding the rabbit');
          }else{
            res.render('edit', {rabbits:rabbits[0], errors: errr.errors});

          }
        });
      }else{
        console.log("successful edit");
        res.redirect('/')
      }
    });
  },
  removethisone: function(req, res){
    Rabbit.remove({_id: req.params.id}, function(err){
      if(err){
        console.log('something went wrong with the delete');
      }else{
        console.log('successfully deleted rabbit');
        res.redirect('/')
      }
    });
  }

}
