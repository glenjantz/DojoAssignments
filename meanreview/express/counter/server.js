var express = require('express')
var app = express()
var path = require("path");
var session = require('express-session');
var bodyParser = require('body-parser');
// use it!
app.use(session({secret: 'codingdojorocks'}));
app.use(bodyParser.urlencoded({ extended: true }));
// static content
app.use(express.static(path.join(__dirname, "./static")));
// setting up ejs and our views folder
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  if(request.session.views){
    request.session.views++
    response.render('index', {counter:request.session.views})
  }else{
    request.session.views = 1
    response.render('index', {counter:request.session.views})
  }
})
app.get('/plustwo', function(request, response) {
request.session.views++
response.redirect('/')
})
app.get('/reset', function(request, response){
  request.session.views = 0
  response.redirect('/')
})
app.listen(8000, function() {
  console.log("listening on port 8000");
})
