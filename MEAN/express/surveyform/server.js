// Before you start coding this, first outline or write down the steps of
//  accomplishing this.
//
// For example
//
// Have the server render views/index.ejs that has the form for the user
//  to fill out The user fills out the form and submits The submitted
//   form gets sent to /result The server recognizes when someone
//    posts things to /result,
//  grabs information from the POST, and sends the POST data back as
//   its renders views/results.ejs
var express = require("express");
var app = express();
var path = require("path");
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, "./static")));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');
app.get('/', function(req, res) {
  res.render('index');
})
var formData = {};
app.post('/formSubmit', function(req, res){
  formData = req.body;
  // console.log(res.body);
  res.redirect('/result');
})

//This is a bad way!!! do not use....resubmits form on refresh
// app.post('/result', function(req, res){
//   var stuff = {
//     name: req.body.name,
//     location: req.body.dojo,
//     language: req.body.lang,
//     comment: req.body.comment
//   }
//   res.render('result', {stuff: stuff})
// })
app.get('/result', function(req, res) {
  res.render('result', {stuff : formData});
})

app.listen(8000, function(){
  console.log("listening on port 8000")
});
