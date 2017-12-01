 var express = require('express'),
     bodyParser = require('body-parser'),
     mongoose = require('mongoose'),
     path = require('path'),
     port = 8000,
     app = express();
app.use(bodyParser.urlencoded({extended: true}));
app.set('views', path.join(__dirname, './client/views'));
app.set('view engine', 'ejs');
require('./server/config/mongoose.js')
var routes_setter = require('./server/config/routes.js')(app);
app.listen(port, function(){
  console.log('listening on port ', port)
});
