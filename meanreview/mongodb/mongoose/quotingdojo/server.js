var express = require('express')
var app = express()
var moment = require('moment');
var mongoose = require('mongoose')
mongoose.connect('mongodb://localhost/quoting_dojos');
mongoose.Promise = global.Promise;
var QuoteSchema = new mongoose.Schema({
  name: {type: String,
         required: [true,"name must be greater than 1 character"],
         minlength: 1},
  quote: {type: String,
          required: [true,"quote must be greter than 1 character"],
          minlength: 1},
  created_at: {type: Date,
     default: Date.now},
 date: {type: String,
    default: ""}
});
mongoose.model('Quote', QuoteSchema);
var Quote = mongoose.model('Quote');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));

var path = require('path');

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.get('/', function(req, res){
  res.render('index')
});
app.post('/quotes', function(req, res){
  var quote = new Quote({
    name: req.body.name,
    quote: req.body.quote
  });
  var formatted_date = moment(quote.created_at).format("MMMM do YYYY, h:mm:ss a");
  quote.date = formatted_date;
  quote.save(function(err){
  if(err){
    console.log('something went wrong');
    res.render('index', {errors: quote.errors})
  }else{
    console.log('successfully added to db');
    res.redirect('/quotes');
    }
  });
})
app.get('/quotes', function(req,res){
  Quote.find({}, function(err, quotes){
    if(err){
      console.log('something went wrong finding the quotes');
    }else{
      for(var i in quotes){
        quotes[i].stamp = quotes[i].created_at.toLocaleString();
      }
      res.render('quotes', {quotes: quotes});
    }
  });
});
app.listen(8000, function(){
  console.log('listening on port 8000');
});
