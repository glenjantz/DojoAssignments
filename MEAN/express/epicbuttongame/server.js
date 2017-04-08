var express = require('express');
var app = express();
var path = require("path");
// var bodyParser = require('body-parser');
var count = 0;
var string = "The button has been pushed " + count + " time(s)"
// app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, "./static")));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');
app.get('/', function(req, res){
  res.render('index');
})
var server = app.listen(8000, function(){
  console.log('listening on port 8000')
})

var io = require('socket.io').listen(server);
io.sockets.on('connection', function (socket){
  console.log('we are using sockets!!!')
  socket.on('incrementing', function(data){
    console.log(data)
    count += data
    string = "The button has been pushed " + count + " time(s)"
    io.emit('counter', string)

  })
  socket.on('resetting', function(data){
    count = data
    string = "The button has been pushed " + count + " time(s)"
    io.emit('resetcomplete', string)
  })
})
