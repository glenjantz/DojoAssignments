 var express = require('express'),
     bodyParser = require('body-parser'),
     mongoose = require('mongoose'),
     path = require('path'),
     port = 8000,
     app = express();

app.use(bodyParser.urlencoded({extended: true}));
mongoose.connect('mongodb://localhost/mongeeses');
mongoose.Promise = global.Promise;
var RabbitSchema = new mongoose.Schema({
  name: {type: String,
         required: [true, "name must be greater than 3 characters"],
         minlength: 3},
  babies: {type: Number,
          required: [true, "number of babies must be a number"]},
  size: {type: String,
         required: [true, "size must be greater than 3 characters"],
         minlength: 3}
})
mongoose.model('Rabbit', RabbitSchema);
var Rabbit = mongoose.model('Rabbit');
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.get('/', function(req, res){
  Rabbit.find({}, function(err, rabbits){
    if(err){
      console.log('something went wrong finding the rabbits')
    }else{
      res.render('index', {rabbits: rabbits})
    }
  })
})
app.get('/mongooses/new', function(req, res){
  res.render('new')
})
app.post('/mongooses', function(req,res){
  var rabbit = new Rabbit({
    name: req.body.name,
    babies: req.body.babies,
    size: req.body.size
  })
  rabbit.save(function(err){
    if(err){
      console.log('something went wrong saving the rabbit')
      res.render('new', {errors: rabbit.errors})
    }else{
      res.redirect('/')
    }
  })
})
app.get('/mongooses/:id', function(req, res){
  Rabbit.find({_id: req.params.id}, function(err, rabbit){
    if(err){
      console.log('something went wrong finding the rabbit')
    }else{
      res.render('single', {rabbit: rabbit[0]})
    }
  })
})
app.get('/mongooses/edit/:id', function(req,res){
  Rabbit.find({_id: req.params.id}, function(err, rabbit){
    if(err){
      console.log('something went wrong finding the rabbit')
    }else{
      res.render('edit', {rabbit: rabbit[0]})
    }
  })
})
app.post('/mongooses/:id', function(req,res){
  Rabbit.update({_id: req.params.id},{
  name: req.body.name,
  babies: req.body.babies,
  size: req.body.size
}, {runValidators: true}, function(errr){
  if(errr){
    console.log("something went wrong with editing", errr);
    Rabbit.find({_id: req.params.id}, function(err,owls){
      if(err){
        console.log('something went wrong finding the owl');
      }else{
        console.log(errr.errors.name.message)
        res.render('edit', {rabbit:rabbit[0], errors: errr.errors});
      }
    });
  }else{
    console.log("successful edit");
    res.redirect('/')
  }
});
})
app.post('/mongooses/destroy/:id', function(req,res){
Rabbit.remove({_id: req.params.id}, function(err){
  if(err){
    console.log('something went wrong with the delete');
  }else{
    console.log('successfully deleted rabbit');
    res.redirect('/')
  }
});

});
app.listen(port, function(){
  console.log('listening on port ', port)
});
