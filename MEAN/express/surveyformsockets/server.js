var express = require('express');
var app = express();
var path = require("path");
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: true}));
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
  socket.on('posting_form', function (data){
    console.log('this is what i recieved', data)
    var random = Math.floor(Math.random() * 1001) + 1
    // data[4] = random;
    socket.emit('submitted_data', data)
    socket.emit('random_number', random)
  })
})
