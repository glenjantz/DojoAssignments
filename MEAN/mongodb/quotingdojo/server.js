//import express and use it
var express = require('express');
var app = express();
//import moment for date formatting
var moment = require('moment');

//import mongoose and connect
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/quoting_dojo');
mongoose.Promise = global.Promise;
//create outline for saved quotes
var QuoteSchema = new mongoose.Schema({
                        //set validations
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
//set the schema
mongoose.model('Quote', QuoteSchema);
//use the schema
var Quote = mongoose.model('Quote');
//import bodyparser for forms and use it
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
//import path for joining dirname
var path = require('path');
// app.use(express.static(path.join(__dirname, 'static')));
//no files in static don't need this line
//set view folder
app.set('views', path.join(__dirname, 'views'));
//tell it to use ejs
app.set('view engine', 'ejs');
//render homepage
app.get('/', function(req, res){
  res.render('index')
});
//add the quote to the db
app.post('/', function(req, res){
  // console.log("POST DATA", req.body);
  //set the quote
  var quote = new Quote({
    name: req.body.name,
    quote: req.body.quote
  });
  var formatted_date = moment(quote.created_at).format("MMMM do YYYY, h:mm:ss a");
  quote.date = formatted_date;
  //save it
  quote.save(function(err){
    //handle errors
    if(err){
      console.log('something went wrong');
      res.render('index', {errors: quote.errors})
    }else{
      console.log('successfully added to db');
      res.redirect('/quotes');
    }
  });

});
//pull the quote from the db
app.get('/quotes', function(req,res){
  Quote.find({}, function(err, quotes){
    //handle errors
    if(err){
      console.log('something went wrong finding the quotes');
    }else{
      // var quotedata = quotes;
      for(var i in quotes){
        quotes[i].stamp = quotes[i].created_at.toLocaleString();
      }
      res.render('quotes', {quotes: quotes});
    }
  });

  // res.render('quotes')
});
//set server
app.listen(8000, function(){
  console.log('listening on port 8000');
});
