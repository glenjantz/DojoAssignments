//import express and use it
var express = require('express');
var app = express();
//import mongoose and connect
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/mongeese');
//override mongoose promise
mongoose.Promise = global.Promise;
//create outline for db entries
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
//import bodyparser for forms
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
//import path for joining dirname
var path = require('path');
//set views folder
app.set('views', path.join(__dirname, 'views'));
//tell app to use ejs
app.set('view engine', 'ejs');
//render homepage

app.get('/', function(req,res){
  Owl.find({}, function(err, owls){
    if(err){
      console.log('something went wrong finding the owls');
      // var owlerror = "didnt find the owls you were looking for"
      // res.render('index', {owls: owlerror});
    }else{
      res.render('index', {owls: owls});
    }
  });
  // res.render('index');
});
//render add a new owl
app.get('/mongooses/new', function(req,res){
  res.render('new')
});
//render individual owl
app.get('/mongooses/:id', function(req, res){
  Owl.find({_id:req.params.id}, function(err, owls){
    if(err){
      console.log('your owl is missing');
      res.render('solobird')
    }else{
      // console.log(owls)
      res.render('solobird', {owls:owls[0]})
    }
  });
  // res.render('solobird', )
});

//handle post data for adding a new owl
app.post('/mongooses', function(req,res){
  console.log("POST DATA", req.body);
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
});
//render edit an existing owl
app.get('/mongooses/edit/:id', function(req,res){
  Owl.find({_id: req.params.id}, function(err,owls){
    if(err){
      console.log('something went wrong finding the owl');
    }else{
      console.log('successful edit loaded');
      // console.log(owls.errors);
      res.render('editbird', {owls:owls[0]});
    }
  });
});

//handle post data for editing an owl
app.post('/mongooses/:id', function(req,res){
  Owl.update({_id: req.params.id},{
    name: req.body.name,
    numlegs: req.body.numlegs,
    size: req.body.size
  }, {runValidators: true}, function(errr){
    if(errr){
      console.log("something went wrong with editing", errr);
      // res.render('index')
      Owl.find({_id: req.params.id}, function(err,owls){
        if(err){
          console.log('something went wrong finding the owl');
        }else{
          // console.log('successful edit loaded');
          console.log(errr.errors.name.message)
          res.render('editbird', {owls:owls[0], errors: errr.errors});
          // console.log(owls[0].errors);

        }
      });
      // res.render('editbird', );
    }else{
      console.log("successful edit");
      res.redirect('/')
    }
  });
});


//delete an owl by id
app.post('/mongooses/destroy/:id', function(req,res){
Owl.remove({_id: req.params.id}, function(err){
  if(err){
    console.log('something went wrong with the delete');
  }else{
    console.log('successfully deleted bird');
    res.redirect('/')
  }
});

});


//set server
app.listen(8000, function(){
  console.log('listening on port 8000');
});
