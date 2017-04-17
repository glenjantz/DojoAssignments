//require express BP path and initialize express
var express = require('express'),
    bodyParser = require('body-parser'),
    path = require('path'),
    app = express();
//use bodyParser
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, "./client")));
app.use(express.static(path.join(__dirname, "./bower_components")));
require(path.join(__dirname, 'server/config/mongoose.js'));
var routes_setter = require('./server/config/routes.js');
routes_setter(app);
app.listen(8000, function(){
  console.log('listening on port 8000');
});
