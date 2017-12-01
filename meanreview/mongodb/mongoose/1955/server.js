var express = require('express'),
    app = express(),
    mongoose = require('mongoose'),
    bodyParser = require('body-parser'),
    path = require('path')

app.use(bodyParser.urlencoded({extended: true}));
app.set('view engine', 'ejs');
require('./server/config/mongoose.js')
var routes_setter = require('./server/config/routes.js');
routes_setter(app);
app.listen(8000, function(){
  console.log('listening on port 8000');
});
